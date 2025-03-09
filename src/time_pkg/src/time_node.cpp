#include "ros/ros.h"

void doSomeThing(ros::TimerEvent event){
    ROS_INFO("----------------------------");
    ROS_INFO("event:%s",std::to_string(event.current_real.toSec()).c_str());
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"time");

    ros::NodeHandle nh;
    ros::Time right_now = ros::Time::now();

    ROS_INFO("now:%.2f",right_now.toSec());
/*
    ROS_INFO("now:%d",right_now.sec);

    ros::Time someTime(100,100000000);

    ROS_INFO("%.2f",someTime.toSec());

    ros::Time someTime2(100.3);
    ROS_INFO("%.2f",someTime2.toSec());

    ROS_INFO("now_time:%.2f",ros::Time::now().toSec());
    ros::Duration du(10);
    du.sleep();
    ROS_INFO("time of duration:%.2f",du.toSec());
    ROS_INFO("now time:%.2f",ros::Time::now().toSec());

    ROS_INFO("time operation");
    
    ros::Time now = ros::Time::now();
    ros::Duration du1(10);
    ros::Duration du2(20);

    ros::Time after_time = now + du1;
    ros::Time befor_time = now - du2;

    ROS_INFO("now_time:%.2f",now.toSec());
    ROS_INFO("befor_time:%.2f",befor_time.toSec());
    ROS_INFO("after_time:%.2f",after_time.toSec());

    ros::Rate r(1);
    while(ros::ok()){

        ROS_INFO("-----------------echo----------------------");
        r.sleep();
    }
*/
    ros::Timer timer = nh.createTimer(ros::Duration(2.0),doSomeThing,true);

    ros::spin();

    return 0;
}