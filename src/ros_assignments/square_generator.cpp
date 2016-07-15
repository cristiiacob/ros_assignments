<<<<<<< HEAD
#include <ros_assignments/square_generator_node.hpp>
=======
#include <ros/ros.h>
#include <exception>
#include <std_msgs/Float32.h>
#include <stdio.h>      /* printf */
#include <stdlib.h>     /* abs */

class SquareGenerator
{
  public:
    SquareGenerator(const ros::NodeHandle& nh): nh_(nh), y(0), k(0)
    {}

    ~SquareGenerator() {}

    void start(const ros::Duration& period)
    {
      pub_ = nh_.advertise<std_msgs::Float32>("raw", 1);
      timer_ = nh_.createTimer(period, &SquareGenerator::callback, this);
    }

  private:
    ros::NodeHandle nh_;
    ros::Publisher pub_;
    ros::Timer timer_;
    int y,k;

    void callback(const ros::TimerEvent& e)
    {
	if(k%10 == 0 && y == 0)
    	{
    		y = 1;
    		k++;
    	}
    	else if(k%10 == 0 && y == 1)
    	{
    		y = 0;
    		k++;
    	}
    	else
    	{
    		k++;
    	}

    	std_msgs::Float32 msg;
        msg.data = y;
        ROS_INFO("%f", msg.data);
        pub_.publish(msg);
    }
};

>>>>>>> 94730a8e21dc2b3ba11a6adc5debfa5ddacba6ee

int main(int argc, char **argv)
{
    ros::init(argc, argv, "square_generator");
    ros::NodeHandle nh("~");

<<<<<<< HEAD
    ros_assignments::SquareGeneratorNode my_generator(nh);
=======
    SquareGenerator my_generator(nh);
>>>>>>> 94730a8e21dc2b3ba11a6adc5debfa5ddacba6ee
    try
    {
      my_generator.start(ros::Duration(0.1));
    }
    catch(const std::exception& e)
    {
      ROS_ERROR("%s", e.what());
      return 0;
    }

    ros::spin();

    return 0;
}
