#include "ros/ros.h"
#include "sensor_msgs/Imu.h"
#include "tf/tf.h"
#include "geometry_msgs/Twist.h"

ros::Publisher pub;

void doMsg(sensor_msgs::Imu msg){

    if(msg.angular_velocity_covariance[0] < 0){
        return ;
    }

    tf::Quaternion quaternion(msg.orientation.x,msg.orientation.y,msg.orientation.z,msg.orientation.w);

    double roll,pitch,yaw;
    tf::Matrix3x3(quaternion).getRPY(roll,pitch,yaw);

    roll = roll * 180 / M_PI;
    pitch = pitch * 180 /M_PI;
    yaw = yaw * 180 / M_PI;

    ROS_INFO("Roll:%.2f,Pitch:%.2f,yaw:%.2f",roll,pitch,yaw);

    geometry_msgs::Twist vel;

    double target_yaw = 90;
    
    double diff_yaw = target_yaw - yaw;
    
    vel.angular.z = diff_yaw * 0.01;
    vel.linear.x = 0.1;
    pub.publish(vel);
}

int main(int argc,char *argv[]){

    ros::init(argc,argv,"imu_vel_node");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/imu/data",10,doMsg);

    pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);

    ros::spin();

    return 0;
}