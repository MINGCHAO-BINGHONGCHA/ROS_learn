#include "ros/ros.h"
#include "sensor_msgs/Imu.h"
#include "tf/tf.h"

void doMsg(sensor_msgs::Imu msg){
    if(msg.orientation_covariance[0] < 0)
        return ;

    tf::Quaternion quaternion;
    
    quaternion = tf::Quaternion(
        msg.orientation.x,
        msg.orientation.y,
        msg.orientation.z,
        msg.orientation.w
    );

    double roll,pitch,yaw;
    tf::Matrix3x3(quaternion).getRPY(roll,pitch,yaw);
    roll = roll*180/M_PI;
    pitch = pitch*180/M_PI;
    yaw = yaw*180/M_PI;

    ROS_INFO("fan_gun:%.2f,fu_yang:%.2f,chao_xiang:%.2f",roll,pitch,yaw);
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"imu_node");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/imu/data",10,doMsg);

    ros::spin();
    return 0;
}