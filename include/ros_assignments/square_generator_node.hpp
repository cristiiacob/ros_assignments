#ifndef ROS_ASSIGNMENTS_SQUARE_GENERATOR_NODE_HPP
#define ROS_ASSIGNMENTS_SQUARE_GENERATOR_NODE_HPP

#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <ros_assignments/square_generator.hpp>

namespace ros_assignments
{
  class SquareGeneratorNode
  {
    public:
      SquareGeneratorNode(const ros::NodeHandle& nh): nh_(nh)
      {}
  
      ~SquareGeneratorNode() {}
  
      void start(const ros::Duration& period)
      {
        pub_ = nh_.advertise<std_msgs::Float32>("raw", 1);
        timer_ = nh_.createTimer(period, &SquareGeneratorNode::callback, this);
      }
  
    private:
      ros::NodeHandle nh_;
      ros::Publisher pub_;
      ros::Timer timer_;
      SquareGenerator generator_;
  
      void callback(const ros::TimerEvent& e)
      {
      	std_msgs::Float32 msg;
        msg.data = generator_.current_value();
        generator_.step_forward();
        ROS_INFO("%f", msg.data);
        pub_.publish(msg);
      }
  };
}

#endif // ROS_ASSIGNMENTS_SQUARE_GENERATOR_NODE_HPP
