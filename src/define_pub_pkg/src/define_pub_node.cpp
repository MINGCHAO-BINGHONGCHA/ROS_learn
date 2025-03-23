#include "ros/ros.h"
#include "define_msgs/Carry.h"

int main(int argc,char *argv[]){

    ros::init(argc,argv,"define_pub");
    ROS_INFO("pub's message");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<define_msgs::Carry>("kai_hei",10);

    define_msgs::Carry msg;
    msg.grade = "wang_zhe";
    msg.star = 50;
    msg.info = "kuai_shang_che";

    ros::Rate rate(10);

    while(ros::ok()){

        pub.publish(msg);
        rate.sleep();
    }
}