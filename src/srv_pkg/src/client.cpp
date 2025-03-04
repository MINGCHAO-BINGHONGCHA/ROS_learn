#include "ros/ros.h"
#include "srv_pkg/define.h"

int main(int argc,char *argv[]){

    if(argc != 3){
        ROS_ERROR("commit two int");

        return 1;
    }

    ros::init(argc,argv,"client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<srv_pkg::define>("AddInt");

    ros::service::waitForService("AddInt");

    srv_pkg::define ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);

    bool flag = client.call(ai);


    if(flag){
        ROS_INFO("normal:%d",ai.response.sum);
    }else{
        ROS_ERROR("exception");
        return 1;
    }

    return 0;
}