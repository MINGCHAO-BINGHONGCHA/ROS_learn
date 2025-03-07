#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc,char *argv[]){

    ros::init(argc,argv,"set_turtle");

    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");

    ros::service::waitForService("/spawn");

    turtlesim::Spawn spawn;
    spawn.request.x = 8.0;
    spawn.request.y = 4.0;
    spawn.request.theta = 3.0;
    spawn.request.name = "test";
    
    bool flag = client.call(spawn);

    if(flag){
        ROS_INFO("tor'name:%s",spawn.response.name.c_str());
    }else{
        ROS_ERROR("error!!!");
    }
    return 0;
}