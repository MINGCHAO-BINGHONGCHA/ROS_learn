#include "ros/ros.h"
#include "person_pkg/Person.h"

int main(int argc ,char *argv[]){
     
    ros::init(argc,argv,"pub_define_node");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<person_pkg::Person>("define",10);

    person_pkg::Person p;
    p.name = "zxd";
    p.age = 18;
    p.height = 160.12;

    ros::Rate rate(10);
    while(ros::ok()){
        pub.publish(p);
        p.age++;
        ROS_INFO("name:%s,age:%d,height:%.2f",p.name.c_str(),p.age,p.height);

        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}