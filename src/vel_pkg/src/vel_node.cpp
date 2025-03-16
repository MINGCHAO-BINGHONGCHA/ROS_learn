#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc,char *argv[]){

    ros::init(argc,argv,"vel_node");
    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);

    geometry_msgs::Twist msg;
    msg.linear.x = 1.0;
    msg.linear.y = 1.0;
    msg.linear.z = 0.0;

    msg.angular.x = 0.0;
    msg.angular.y = 0.0;
    msg.angular.z = 0.0;
    while(ros::ok()){

        
        pub.publish(msg);

        ros::spinOnce();

    }

    return 0;
}