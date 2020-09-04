/*
#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/PoseStamped.h>
#include <std_msgs/String.h>
*/
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>
#include <fstream>

#include "/opt/ros/indigo/include/ros/ros.h"
#include "/opt/ros/indigo/include/message_filters/subscriber.h"
#include "/opt/ros/indigo/include/message_filters/synchronizer.h"
#include "/opt/ros/indigo/include/message_filters/sync_policies/approximate_time.h"
#include "/opt/ros/indigo/include/sensor_msgs/Image.h"
#include "/opt/ros/indigo/include/sensor_msgs/Imu.h"
#include "/opt/ros/indigo/include/geometry_msgs/PoseStamped.h"
#include "/opt/ros/indigo/include/std_msgs/String.h"


using namespace std;

typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Imu, geometry_msgs::PoseStamped> MySyncPolicy;

class dataSynAcq{
public:
    //dataSynAcq( string image_dir, string imu_dir, string gt_dir );
    dataSynAcq( string path );
    ~dataSynAcq();
    
    ros::NodeHandle nh;
    
    void CallBack( const sensor_msgs::ImageConstPtr &image, const sensor_msgs::ImuConstPtr &imu, const geometry_msgs::PoseStampedConstPtr &gt );
    
private:
    message_filters::Subscriber<sensor_msgs::Image> *image_sub_;
    message_filters::Subscriber<sensor_msgs::Imu> *imu_sub_;
    message_filters::Subscriber<geometry_msgs::PoseStamped> *gt_sub_;
    message_filters::Synchronizer<MySyncPolicy> *sync_;
    string seq_;
    string image_dir_;
    string imu_dir_;
    string gt_dir_;  
    ofstream image_stamp;
    ofstream imu_file;
    //ofstream gt_file;
};
