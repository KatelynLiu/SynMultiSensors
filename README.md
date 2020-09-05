# SynMultiSensors
Synchronize multi sensors data(Mono camera, imu-Xsens, GroundTruth) from rosbag (with several topics), and in this project, we only save images as .png, and attitudes data as .csv, and finally we will output:
(1) a folder named image, which contains all the images(the file names are image timestamps);
(2) image_stamp.txt file records the image timastamps
(3) imu.csv file records the timestamps and Quaternion from imu and GroundTruth, the order is 
imu_timestamps/imu.x/imu.y/imu.z/imu.w/gt_timestamps/gt.x/gt.y/gt.z/gt.w

NOTE: the data are synchronized by ros message_filters approximate_time

the rosbag required from optiTrack contains three topics:
(You can get the infomation by "rosbag info xx.bag")
/imu/data                       11600 msgs    : sensor_msgs/Imu          
/usb_cam/image_raw                870 msgs    : sensor_msgs/Image        
/vrpn_client_node/luopan/pose    3410 msgs    : geometry_msgs/PoseStamped
As you can see,
(1) the topics names are:
/imu/data   /usb_cam/image_raw  /vrpn_client_node/luopan/pose
which are needed in dataSynAcq.cpp-->dataSynAcq::dataSynAcq(std::string path )-->Subscriber function
(2) the message types are:
sensor_msgs/Imu  sensor_msgs/Image  geometry_msgs/PoseStamped
which are needed in dataSynAcq.h-->#include
