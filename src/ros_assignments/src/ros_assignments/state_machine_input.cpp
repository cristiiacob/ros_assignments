#include "ros/ros.h"
#include "ros_assignments/InputService.h"
#include <std_msgs/String.h>
#include <string>

using namespace std;

class StateMachineInput
{
  public:
	StateMachineInput(const ros::NodeHandle& nh): nh_(nh)
    {}
		
    ~StateMachineInput() {}
	
	ros::ServiceClient getClient()
	{
    	return client_;
    }
		    
	ros_assignments::InputService getService()
	{
		return srv_;
	}
	
	void start()
   {
	    client_ = nh_.serviceClient<ros_assignments::InputService>("/state_machine/input");
   }
	
  private:
      ros::NodeHandle nh_;
      ros::ServiceClient client_;
      ros_assignments::InputService srv_;
};

int main(int argc, char **argv)
{	
	ros::init(argc, argv, "state_machine_input");
	
	ros::NodeHandle nh;
	StateMachineInput my_input(nh);
	
	try
	{
		my_input.start();
	}
	catch(const std::exception& e)
	{
		ROS_ERROR("%s", e.what());
		return 0;
	}
	
	ros::ServiceClient client = my_input.getClient();
	ros_assignments::InputService srv = my_input.getService();
		
	srv.request.input = argv[1];
	
	ROS_INFO("Input to be transmitted: %s",srv.request.input.c_str());
	ROS_INFO("Ready to send input");
		
	try
	{
		client.call(srv);
		ROS_INFO("Input sent!");
	}
	catch(const std::exception& e)
	{
		ROS_ERROR("%s", e.what());
		return 0;
	}
	return 0;
}