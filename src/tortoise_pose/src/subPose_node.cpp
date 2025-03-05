#include "ros/ros.h"
#include "turtlesim/Pose.h"

void doMsg(const turtlesim::Pose::ConstPtr& msg){
    ROS_INFO("\nx:%f\ny:%f\ntheta:%f\nlinear_velocity:%f\nangular_velocity:%f\n",
        msg->x,msg->y,msg->theta,msg->linear_velocity,msg->angular_velocity);
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"sub_pose");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<turtlesim::Pose>("/turtle1/pose",10,doMsg);

    while(ros::ok()){
        ros::spinOnce();
    }
}