#include "ros/ros.h"
#include "head_pkg/hello.h"

namespace hello_ns {

    void HelloPub::run(){
        ROS_INFO("use define");
    }
}
    int main(int argc,char *argv[]){
        ros::init(argc,argv,"head_test");

        hello_ns::HelloPub hellopub;

        hellopub.run();

        return 0;
    }
