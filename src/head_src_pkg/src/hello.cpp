#include "ros/ros.h"
#include "head_src_pkg/hello.h"

int main(int argc,char *argv[]){
    ros::init(argc,argv,"hello");

    hello_ns::My my;
    my.run();

    return 0;
}