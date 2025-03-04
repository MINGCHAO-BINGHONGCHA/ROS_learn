#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char *argv[]){
    
    ros::init(argc,argv,"pub2_node");
    printf("pub_2's message");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("Second",10);
    
    ros::Rate loop_rate(10);

    while(ros::ok()){
        printf("send message");

        std_msgs::String msg;

        msg.data = "hello_Second";
        pub.publish(msg);
        printf("\n");
        loop_rate.sleep();
    }

    return 0;

}
