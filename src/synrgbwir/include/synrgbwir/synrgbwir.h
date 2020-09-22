#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>
#include <fstream>

#include "/opt/ros/indigo/include/ros/ros.h"
#include "/opt/ros/indigo/include/message_filters/subscriber.h"
#include "/opt/ros/indigo/include/message_filters/synchronizer.h"
#include "/opt/ros/indigo/include/message_filters/sync_policies/approximate_time.h"
#include "/opt/ros/indigo/include/sensor_msgs/Image.h"
#include "/opt/ros/indigo/include/geometry_msgs/PoseStamped.h"
#include "/opt/ros/indigo/include/std_msgs/String.h"

using namespace std;

typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Image, sensor_msgs::Image, geometry_msgs::PoseStamped> MySyncPolicy;

class synrgbwir{
public:
    //synrgbwir( string image_dir, string imu_dir, string gt_dir );
    synrgbwir( string path );
    ~synrgbwir();
    
    ros::NodeHandle nh;
    
    void CallBack( const sensor_msgs::ImageConstPtr &colorImage, const sensor_msgs::ImageConstPtr &depthImage, const sensor_msgs::ImageConstPtr &IR, const geometry_msgs::PoseStampedConstPtr &gt );
    
private:
    message_filters::Subscriber<sensor_msgs::Image> *color_sub_;
    message_filters::Subscriber<sensor_msgs::Image> *depth_sub_;
    message_filters::Subscriber<sensor_msgs::Image> *ir_sub_;
    message_filters::Subscriber<geometry_msgs::PoseStamped> *gt_sub_;
    message_filters::Synchronizer<MySyncPolicy> *sync_;
    string seq_;
    string color_dir_;
    string depth_dir_;
    string ir_dir_;  
    string gt_dir_;
    ofstream ImgStamp;
    ofstream gt_file;
};
