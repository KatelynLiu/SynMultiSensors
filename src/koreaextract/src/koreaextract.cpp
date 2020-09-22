#include "../include/koreaextract/koreaextract.h"
#include <fstream>
#include <boost/bind/bind.hpp>
//#include "/opt/ros/indigo/include/sensor_msgs/image_encodings.h"
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
//using namespace sensor_msgs;
//using namespace message_filters;

//koreaextract::koreaextract(std::string image_dir, std::string imu_dir, std::string gt_dir)
koreaextract::koreaextract(std::string path )
{
    cout << "class koreaextract created a object: " << endl;
    color_sub_ = new message_filters::Subscriber<sensor_msgs::Image>(nh, "/rgb/image", 10);
    depth_sub_ = new message_filters::Subscriber<sensor_msgs::Image>(nh, "/depth/image_raw", 10);
    ir_sub_ = new message_filters::Subscriber<sensor_msgs::Image>(nh, "/thermal/image_raw", 10);
    //gt_sub_ = new message_filters::Subscriber<geometry_msgs::PoseStamped>(nh, "/vrpn_client_node/RigidBody/pose", 1);
    
    sync_ = new message_filters::Synchronizer<MySyncPolicy>(MySyncPolicy(10), *color_sub_, *depth_sub_, *ir_sub_);
    
    color_dir_ = path + "color/";
    depth_dir_ = path + "depth/";
    ir_dir_ = path + "ir/";
    //gt_dir_ = path ;
    
    //创建文件
    ImgStamp.open( (path + "ImgStamp.csv" ).c_str(), ios::app );
    //gt_file.open( ( gt_dir_ + "gt.csv" ).c_str(), ios::out );

    //写文件title
    ImgStamp << "colorstamp" << "," << "depthstamp" << "," << "irstamp" << "," << "gtstamp" << "\n";
    //gt_file << "gt_timestamp" << "," << "pos.x" << "," << "pos.y" << "," << "pos.z" << "," << "att.x" << "," << "att.y" << "," << "att.z" << "," << "att.w" << "\n";
    sync_->registerCallback(boost::bind(&koreaextract::CallBack, this, _1, _2, _3));
}

koreaextract::~koreaextract(){
    ImgStamp.close();
    //gt_file.close();
}

void koreaextract::CallBack(const sensor_msgs::ImageConstPtr &colorImage, const sensor_msgs::ImageConstPtr &depthImage, const sensor_msgs::ImageConstPtr &IR)
{
    cout << "callback:" << endl;
    cout << "color stamp is " << colorImage->header.stamp<< " " ;
    cout << "depth stamp is " << depthImage->header.stamp<< " " ;
    cout << "ir stamp is " << IR->header.stamp<< " " ;
    
    std::ostringstream oss;
    
    //for color image -- convert and save
    oss << colorImage->header.stamp;
    //转换图像
    cv_bridge::CvImageConstPtr cv_ptrcolor;
    //cv_ptrcolor = cv_bridge::toCvCopy( colorImage, sensor_msgs::image_encodings::BGR8 );
    cv_ptrcolor = cv_bridge::toCvShare( colorImage );
    string colorImage_name = (color_dir_ + oss.str() + ".png").c_str();
    cv::imwrite( colorImage_name, cv_ptrcolor->image );
    
    //for depth image -- convert and save
    oss.str(" ");
    oss << depthImage->header.stamp;
    //转换图像
    cv_bridge::CvImageConstPtr cv_ptrD;
    //cv_ptr = cv_bridge::toCvCopy( depthImage, sensor_msgs::image_encodings::MONO16 );
    cv_ptrD = cv_bridge::toCvShare( depthImage );
    string depthImage_name = (depth_dir_ + oss.str() + ".png").c_str();
    cv::imwrite( depthImage_name, cv_ptrD->image );
    
    //for ir image -- convert and save
    oss.str(" ");
    oss << IR->header.stamp;
    //转换图像
    cv_bridge::CvImagePtr cv_ptrIR;
    cv_ptrIR = cv_bridge::toCvCopy( IR, sensor_msgs::image_encodings::MONO16);
    //cv_ptrIR = cv_bridge::toCvShare( IR );
    
    //assert(cv_ptrIR->image.type() == CV_8U);
    //assert(cv_ptrIR->image.channels() == 1);
    cv::Mat m;
    cv::Mat v;
    cv::meanStdDev(cv_ptrIR->image,m,v);
    double maxinm;
    double mininm;
    cv::minMaxIdx(cv_ptrIR->image,&maxinm,&mininm);
    cv::Mat min = m-3.0f*v;
    cv::Mat max = m+3.0f*v;

    double alpha = (255.0f)/(6.0f*v.at<double>(0,0));

    for (int i = 0; i < (cv_ptrIR->image).rows; ++i)
    {
        for (int j = 0; j < (cv_ptrIR->image).cols; ++j)
        {
            double x = (double)(cv_ptrIR->image.at<ushort>(i,j)) - min.at<double>(0,0);
            if (x < 0.0f)
            {
                cv_ptrIR->image.at<ushort>(i,j) = 0;
            }
            else
            {
                if (x > max.at<double>(0,0))
                {
                    cv_ptrIR->image.at<ushort>(i,j) = 255;
                }
                else
                {
                    cv_ptrIR->image.at<ushort>(i,j) =  alpha*x;
                    // printf("%d\n", right_cv_ptr->image.at<ushort>(i,j));
                }
            }
        }
    }
    cv_ptrIR->image.convertTo(cv_ptrIR->image, CV_8U);
    
    string IRImage_name = (ir_dir_ + oss.str() + ".png").c_str();
    cv::imwrite( IRImage_name, cv_ptrIR->image );
    
    //写时间戳到文件image_stamp.txt中,路径和图片路径一样
    //ofstream image_stamp( (image_dir_ + "image_stamp.txt" ).c_str(), ios::app );
    if( !ImgStamp )
    {
        ImgStamp.open( (color_dir_ + "ImgStamp.txt").c_str(), ios::out );
    }
    ImgStamp << colorImage->header.stamp << "," << depthImage->header.stamp << "," << IR->header.stamp << "\n";

    /*
    //存储真值内容
    gt_file << gt->header.stamp << "," << gt->pose.position.x << "," << gt->pose.position.y << "," << gt->pose.position.z << "," << gt->pose.orientation.x << "," << gt->pose.orientation.y << "," << gt->pose.orientation.z << "," << gt->pose.orientation.w << "\n";
    */
}



