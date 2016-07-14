#include <ros/ros.h>
#include <exception>
#include <std_msgs/Float32.h>
#include <deque>


class TriangleGenerator
{
  public:
    TriangleGenerator(const ros::NodeHandle& nh): nh_(nh), y_(0.0), amp_(1.0), k_(0)
    {}

    ~TriangleGenerator() {}

    void start(const ros::Duration& period)
    {
      pub_ = nh_.advertise<std_msgs::Float32>("raw", 1);
      timer_ = nh_.createTimer(period, &TriangleGenerator::callback, this);
    }

  private:
    ros::NodeHandle nh_;
    ros::Publisher pub_;
    ros::Timer timer_;
    float y_, amp_;
    int	k_;


    void callback(const ros::TimerEvent& e)
    {
        if(y_<amp_ && k_ == 0)
        {
        	y_ += 0.1;
        }
        else if((amp_ - y_) < 0.005)
        {
        	y_ -= 0.1;
        	k_ = 1;
        }
        else if(y_<amp_ && k_ == 1)
        {
           	y_ -= 0.1;
        }

        if(y_ < 0.005 && k_ == 1)
        {
        	y_ += 0.1;
        	k_ = 0;
        }

    	std_msgs::Float32 msg;
        msg.data = y_;
        ROS_INFO("%f", msg.data);
        pub_.publish(msg);
    }
};


int main(int argc, char **argv)
{
    ros::init(argc, argv, "triangle_generator");
    ros::NodeHandle nh("~");

    TriangleGenerator my_generator(nh);
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
