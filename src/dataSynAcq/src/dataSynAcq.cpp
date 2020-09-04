#include "../include/dataSynAcq/dataSynAcq.h"
#include <fstream>
#include <boost/bind/bind.hpp>
//#include "/opt/ros/indigo/include/sensor_msgs/image_encodings.h"
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
//using namespace sensor_msgs;
//using namespace message_filters;

//dataSynAcq::dataSynAcq(std::string image_dir, std::string imu_dir, std::string gt_dir)
dataSynAcq::dataSynAcq(std::string path )
{
    cout << "class dataSynAcq created a object: " << endl;
    image_sub_ = new message_filters::Subscriber<sensor_msgs::Image>(nh, "/usb_cam/image_raw", 1000);
    imu_sub_ = new message_filters::Subscriber<sensor_msgs::Imu>(nh,"/imu/data", 1000);
    gt_sub_ = new message_filters::Subscriber<geometry_msgs::PoseStamped>(nh, "/vrpn_client_node/luopan/pose", 1000);
    
    sync_ = new message_filters::Synchronizer<MySyncPolicy>(MySyncPolicy(10), *image_sub_, *imu_sub_, *gt_sub_);
    
    image_dir_ = path + "image/";
    imu_dir_ = path ;
    gt_dir_ = path ;
    
    //创建文件
    image_stamp.open( (imu_dir_ + "image_stamp.txt" ).c_str(), ios::app );
    imu_file.open( ( imu_dir_ + "imu.csv" ).c_str(), ios::out );
    //gt_file.open( ( gt_dir_ + "groundTruth.csv" ).c_str(), ios::out );
    //写文件title
    image_stamp << "timestamp" << "\n";
    imu_file << "imu_timestamp" << "," << "imu.x" << "," << "imu.y" << "," << "imu.z" << "," << "imu.w" << "," << "gt_timestamp" << "," << "gt.x" << "," << "gt.y" << "," << "gt.z" << "," << "gt.w" << "\n";
    //seq_ = "ScSe1";
    sync_->registerCallback(boost::bind(&dataSynAcq::CallBack, this, _1, _2, _3));
}

dataSynAcq::~dataSynAcq(){
    image_stamp.close();
    imu_file.close();
    //gt_file.close();
}

void dataSynAcq::CallBack(const sensor_msgs::ImageConstPtr& image, const sensor_msgs::ImuConstPtr& imu, const geometry_msgs::PoseStampedConstPtr& gt)
{
    cout << "callback:" << endl;
    cout << "image stamp is " << image->header.stamp<< " " ;
    cout << "imu stamp is " << imu->header.stamp << " ";
    cout << "gt stamp is " << gt->header.stamp << " ";
    
    std::ostringstream oss;
    //oss << std::setfill('0') << std::setw(6) << seq_;
    oss << image->header.stamp;
    //转换图像
    cv_bridge::CvImagePtr cv_ptr;
    cv_ptr = cv_bridge::toCvCopy( image, sensor_msgs::image_encodings::BGR8 );
    string image_name = (image_dir_ + oss.str() + ".png").c_str();
    cv::imwrite( image_name, cv_ptr->image );
    //写时间戳到文件image_stamp.txt中,路径和图片路径一样
    //ofstream image_stamp( (image_dir_ + "image_stamp.txt" ).c_str(), ios::app );
    if( !image_stamp )
    {
        image_stamp.open( (imu_dir_ + "image_stamp.csv").c_str(), ios::out );
    }
    image_stamp << image->header.stamp << "\n";
    //image_stamp.close();
    
    //转换imu
    //ofstream imu_file( ( imu_dir_ + "imu.csv" ).c_str(), ios::out );
    //xsens四元数信息
    imu_file << imu->header.stamp << "," << imu->orientation.x << "," << imu->orientation.y << "," << imu->orientation.z << "," << imu->orientation.w << "," << gt->header.stamp << "," << gt->pose.orientation.x << "," << gt->pose.orientation.y << "," << gt->pose.orientation.z << "," << gt->pose.orientation.w << "\n";
    //imu_file.close();
    
    /*//真值
    //ofstream gt_file( ( gt_dir_ + "groundTruth.csv" ).c_str(), ios::out );
    gt_file << gt->header.stamp << "," << gt->pose.orientation.x << "," << gt->pose.orientation.y << "," << gt->pose.orientation.z << "," << gt->pose.orientation.w << "\n";
    //gt_file.close();
    */

}



