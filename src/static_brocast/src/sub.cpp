#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"

int main(int argc,char *argv[]){

    setlocale(LC_ALL,"");
    ros::init(argc,argv,"sub");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);

    ros::Rate r(1);

    while(ros::ok()){
        geometry_msgs::PointStamped point_laser;
        point_laser.header.frame_id = "laser";
        point_laser.header.stamp = ros::Time::now();
        point_laser.point.x = 1.0;
        point_laser.point.y = 2.0;
        point_laser.point.z = 7.3;

        try{
            geometry_msgs::PointStamped point_base;
            point_base = buffer.transform(point_laser,"base_link");
            ROS_INFO("转换后的数据:(%.2f,%.2f,%.2f),参考的坐标系是：%s",point_base.point.x,point_base.point.y,point_base.point.z,point_base.header.frame_id.c_str());

        }
        catch(const std::exception& e){
            ROS_INFO("程序异常....");
        }

        r.sleep();
        ros::spinOnce();
    }

    return 0;
}