#include "ros/ros.h"
#include "std_msgs/String.h"

void first_callback(std_msgs::String msg){
    ROS_INFO(msg.data.c_str());

}

void second_callback(std_msgs::String msg){
    ROS_INFO(msg.data.c_str());

}

int main(int argc,char *agrv[]){

    setlocale(LC_ALL,"");
        
    ros::init(argc,agrv,"sub_node");
    
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("first",10,first_callback);
    ros::Subscriber sub2 = nh.subscribe("Second",10,second_callback);
    while(ros::ok()){
        ros::spinOnce();        
    }
}