#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"
#include "iostream"
ros::Publisher pub;
int ncount = 50;
void doMsg(sensor_msgs::LaserScan msg){
    float gap = msg.ranges[180];
    
    geometry_msgs::Twist vel;
    ROS_INFO("距离：%.2f",gap);

    if(ncount>0){
        ncount--;
        return;
    }

    if(gap < 1.5){
        if(msg.ranges[90] < msg.ranges[270]){
            vel.angular.z = 0.2; //左转
            
        }else if(msg.ranges[270] <= msg.ranges[90]){
            vel.angular.z = -0.2;
        }
        ncount =50;
    }else{
        vel.linear.x =0.2;

    }
    pub.publish(vel);
}

int main(int argc,char *argv[]){
    ros::init(argc,argv,"auto_cruise_node");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<sensor_msgs::LaserScan>("/scan",10,doMsg);

    pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);

    ros::spin();
    return 0;
}