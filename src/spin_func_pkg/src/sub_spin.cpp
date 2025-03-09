#include "ros/ros.h"
#include "std_msgs/String.h"

void doMsg(std_msgs::String msg){

    ROS_INFO("%s",msg.data.c_str());

}

int main(int argc,char* argv[]){

    ros::init(argc,argv,"sub_spin");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<std_msgs::String>("spin_func",10,doMsg);

    ros::spinOnce();

    return 0;
}