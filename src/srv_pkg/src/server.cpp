#include "ros/ros.h"
#include "srv_pkg/define.h"

bool add (srv_pkg::define::Request& req,srv_pkg::define::Response& resp){
    int num1 = req.num1;
    int num2 = req.num2;

    ROS_INFO("The request received by the server num1:%d num2:%d",num1,num2);

    if(num1 < 0 || num2 < 0){
        ROS_ERROR("data exception!!!");
        return false;
    }else{
        resp.sum = num1+num2;
        return true;
    }
}

int main(int argc,char *argv[]){
    ros::init(argc,argv,"server"); 
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("AddInt",add);

    ROS_INFO("server strating....");

    ros::spin();
    return 0;
}