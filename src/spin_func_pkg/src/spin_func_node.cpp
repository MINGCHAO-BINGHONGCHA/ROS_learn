#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char *argv[]){

    ros::init(argc,argv,"spin_func");

    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<std_msgs::String>("spin_func",10);

    std_msgs::String msg;

    msg.data = "This is a test about 'spin'";

    while(ros::ok()) {
        
        pub.publish(msg);
    }   

    ros::spin();
}