#include "ros/ros.h"
#include "ros_assignments/ServiceCall.h"
#include <std_msgs/Float32.h>
#include <std_msgs/Int32.h>

class ConstantGenerator
{
  public:
    ConstantGenerator(const ros::NodeHandle& nh): nh_(nh), x_(5), f_(10)
    {}

    ~ConstantGenerator() {}

    bool receiveRequest(ros_assignments::ServiceCall::Request &req,
                	  	    ros_assignments::ServiceCall::Response &res)	
    {
      ROS_INFO("Received values: x=%d, y=%f", (int)req.x, (float)req.f);
      x_ = req.x;
      f_ = req.f;
      timer_.setPeriod((req.f == 0.0) ? ros::Duration(0) : ros::Duration(1.0/req.f));
      return true;
    }
    
    void start(const ros::Duration& period)
    {
      pub_ = nh_.advertise<std_msgs::Int32>("signal", 1);
      srv_ = nh_.advertiseService("control", &ConstantGenerator::receiveRequest,this);
      timer_ = nh_.createTimer(period, &ConstantGenerator::callback, this);
    }

  private:
    ros::NodeHandle nh_;
    ros::Publisher pub_;
    ros::Timer timer_;
    ros::ServiceServer srv_;
    int	x_;
    float f_;


    void callback(const ros::TimerEvent& e)
    {	 	
    	std_msgs::Int32 msg;
        msg.data = x_;
        ROS_INFO("Publishing constant x = %d at frequency f = %f", msg.data, f_);
        pub_.publish(msg);
    }
    
};

int main(int argc, char **argv)
{	
	
    ros::init(argc, argv, "constant_generator");
    ros::NodeHandle nh("~");
	ConstantGenerator my_generator(nh);
	try
	{
	   my_generator.start(ros::Duration(0.1));
	}
	catch(const std::exception& e)
	{
	   ROS_ERROR("%s", e.what());
	   return 0;
	}
	
	ROS_INFO("Ready to generate");
	ros::spin();
	return 0;
}