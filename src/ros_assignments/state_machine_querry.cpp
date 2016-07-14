#include "ros/ros.h"
#include "ros_assignments/StateService.h"
#include <std_msgs/String.h>
#include <string>

using namespace std;

class StateMachineQuerry
{
  public:
	StateMachineQuerry(const ros::NodeHandle& nh): nh_(nh)
    {}
		
    ~StateMachineQuerry() {}
	
	ros::ServiceClient getClient()
	{
    	return client_;
    }
		    
	ros_assignments::StateService getService()
	{
		return srv_;
	}
	
	void start()
   {
	    client_ = nh_.serviceClient<ros_assignments::StateService>("/state_machine/state");
   }
	
  private:
      ros::NodeHandle nh_;
      ros::ServiceClient client_;
      ros_assignments::StateService srv_;
};

int main(int argc, char **argv)
{	
	ros::init(argc, argv, "state_machine_querry");
	
	ros::NodeHandle nh;
	StateMachineQuerry my_querry(nh);
	
	try
	{
		my_querry.start();
	}
	catch(const std::exception& e)
	{
		ROS_ERROR("%s", e.what());
		return 0;
	}
	
	ros::ServiceClient client = my_querry.getClient();
	ros_assignments::StateService srv = my_querry.getService();
		
	ROS_INFO("Ready to send request");
		
	try
	{
		client.call(srv);
		ROS_INFO("Request sent!");
	}
	catch(const std::exception& e)
	{
		ROS_ERROR("%s", e.what());
		return 0;
	}
	return 0;
}