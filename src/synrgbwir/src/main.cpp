#include "../include/synrgbwir/synrgbwir.h"
#include "/opt/ros/indigo/include/ros/ros.h"
#include <string.h>
#include <stdio.h>

using namespace std;

string directory = "/home/ly/experiment_data_VC/RGBWIR/rpy/";

int main( int argc, char** argv )
{
    ros::init( argc, argv, "synrgbwir_node" );
    //argv[3]大路径--"/home/ly/experiment_data_VC/7.11/", argv[4]每个序列的小路径--"ScSe1"
    //string path = directory + string(argv[3]);
    
    synrgbwir dataSyn( directory );
    ros::spin();
    return 0;
}
