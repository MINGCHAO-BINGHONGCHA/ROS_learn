#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char *argv[]){
    
    ros::init(argc,argv,"pub_node");
    printf("pub's message");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("first",10);
    
    ros::Rate loop_rate(10);

    while(ros::ok()){
        printf("send message");

        std_msgs::String msg;

        msg.data = "hello";
        pub.publish(msg);
        printf("\n");
        loop_rate.sleep();
    }

    return 0;

}