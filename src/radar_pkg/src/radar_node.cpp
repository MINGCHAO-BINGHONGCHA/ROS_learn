#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"

ros::Publisher pub_vel;
int ncount = 25;

void doMsg(sensor_msgs::LaserScan msg){

    float mid = msg.ranges[180];
    ROS_INFO("mid:%.2f",mid);
    if(ncount>0){
        ncount--;
        return ;
    }

    geometry_msgs::Twist vel_cmd;
    if(mid < 1.0){
        vel_cmd.angular.z = 0.2;
        ncount = 50;
    }else{
        vel_cmd.linear.x = 0.1;
    }

    pub_vel.publish(vel_cmd);
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"radar_node");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<sensor_msgs::LaserScan>("/scan",10,doMsg);
    pub_vel = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);
    ros::spin();
    return 0;
}