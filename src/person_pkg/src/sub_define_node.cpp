#include "ros/ros.h"
#include "person_pkg/Person.h"

void msg(const person_pkg::Person::ConstPtr& person_p){
    ROS_INFO("name:%s,age:%d,height:%.2f",person_p->name.c_str(),person_p->age,person_p->height);
}

int main(int argc,char *argv[]){
    ros::init(argc,argv,"sub_defind_node");
    
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe<person_pkg::Person>("define",10,msg);
    
    ros::spin();
    return 0;
}