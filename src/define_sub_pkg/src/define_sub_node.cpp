#include "ros/ros.h"
#include "define_msgs/Carry.h"

void doMsg(define_msgs::Carry msg){
    ROS_INFO("grade:%s  star:%ld  info:%s",msg.grade.c_str(),msg.star,msg.info.c_str());
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"define_sub");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<define_msgs::Carry>("kai_hei",10,doMsg);

    ros::spin();
    return 0;
}