#include "ros/ros.h"

int main(int argc,char *argv[]){

    ros::init(argc,argv,"color");

    ros::NodeHandle nh("turtlesim");

    nh.setParam("background_r",255);
    nh.setParam("background_g",0);
    nh.setParam("background_b",0);

    return 0;
}