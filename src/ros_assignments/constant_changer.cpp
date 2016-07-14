#include "ros/ros.h"
#include "ros_assignments/ServiceCall.h"
#include <std_msgs/Float32.h>
#include <std_msgs/Int32.h>
#include <cstdlib>

class ConstantChanger
{
  public:
    ConstantChanger(const ros::NodeHandle& nh): nh_(nh)
    {}

    ~ConstantChanger() {}    
    
    ros::ServiceClient getClient()
    {
    	return client_;
    }
    
    ros_assignments::ServiceCall getService()
    {
    	return srv_;
    }

    
    void start()
    {
//      client_ = nh_.serviceClient<ros_assignments::ServiceCall>("control");
    	client_ = nh_.serviceClient<ros_assignments::ServiceCall>("/constant_generator/control");
// 	This implementation works. I could not make the communication using ~control, as they were in different namespaces.
//  What is the correct way?
    }

  private:
    ros::NodeHandle nh_;
    ros::ServiceClient client_;
    ros_assignments::ServiceCall srv_;
  
};

int main(int argc, char **argv)
{	

    ros::init(argc, argv, "constant_changer");

    if(argc != 3)
    {
        ROS_INFO("Error! Give x and f!");
        return 1;
    }
    
//  ros::NodeHandle nh("~");
//  see strart()
    ros::NodeHandle nh;
	ConstantChanger my_changer(nh);
	try
	{
	   my_changer.start();
	}
	catch(const std::exception& e)
	{
	   ROS_ERROR("%s", e.what());
	   return 0;
	}
	
	ros::ServiceClient client = my_changer.getClient();
	ros_assignments::ServiceCall srv = my_changer.getService();
	
	srv.request.x = atoi(argv[1]);
	srv.request.f = atof(argv[2]);
	
	ROS_INFO("x = %d, f = %f",srv.request.x,srv.request.f);
	ROS_INFO("Ready to send request");

    
//	if(client.call(srv))
//	{
//	    ROS_INFO("Request sent!");
//	}
//	else
//  {
//	    ROS_ERROR("Failed to call service");
//	    return 1;
//	}
	
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
