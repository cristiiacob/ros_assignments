#include "ros/ros.h"
#include "ros_assignments/InputService.h"
#include "ros_assignments/StateService.h"
#include <std_msgs/String.h>
#include <string>


using namespace std;

class StateMachine
{
	
  public:
    StateMachine(const ros::NodeHandle& nh): nh_(nh), currentState_("start")
  {}

    ~StateMachine() {}
    
    bool receiveInput(ros_assignments::InputService::Request &req,
                    	  	    ros_assignments::InputService::Response &res)	
        {
          ROS_INFO("Received input: %s" , req.input);
          input_ = req.input;
          processInput();
          return true;
        }
    
    bool responseState(ros_assignments::StateService::Request &req,
                       	  	    ros_assignments::StateService::Response &res)	
        {
          ROS_INFO("Received state querry");
          res.state = currentState_;
          ROS_INFO("Current state is: %s", res.state);
          return true;
        }
    
    void processInput()
    {	
//    	switch (currentState_)
//    	{
//    	case states_[0]: 
//    		if(input_ == validInputs_[0])
//    		{
//    			currentState_ = states_[1];
//    		}
//    		else if(input_ == validInputs_[1])
//    		{
//    			currentState_ = states_[4];
//    		}
//    		else 
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	case states_[1]:
//    		if(input_ == validInputs_[2])
//    		{
//    			currentState_ = states_[2];
//    		}
//    		else if(input_ == validInputs_[3])
//    	    {
//    			currentState_ = states_[4];
//    		}
//    		else
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	case states_[2]:
//    		if(input_ == validInputs_[3])
//    		{
//    			currentState_ = states_[3];
//    		}
//    		else
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	case states_[3]:
//    		if(input_ == validInputs_[1])
//    		{
//    			currentState_ = states_[4];
//    		}
//    		else
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	case states_[4]:
//    		if(input_ == validInputs_[0])
//    	    {
//    	    	currentState_ = states_[1];
//    	    }
//    		else if(input_ == validInputs_[2])
//    		{
//    			currentState_ = states_[5];
//    		}
//    	    else
//    	    {
//    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    	    }
//    	case states_[5]:
//    		if(input_ == validInputs_[3])
//    		{
//    			currentState_ = states_[6];
//    		}
//    		else
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	case states_[6]:
//    		if(input_ == validInputs_[0])
//    		{
//    			currentState_ = states_[1];
//    		}
//    		else
//    		{
//    			ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
//    		}
//    	break;
//    	}
    	
    	/*if(currentState_ == states_[0])    		
    	{
    	    if(input_ == validInputs_[0])
    	    {
    	    	currentState_ = states_[1];
    	    }
    	   	else if(input_ == validInputs_[1])
    	    {
    	    	currentState_ = states_[4];
    	   	}
    	   	else 
    	    {
    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    }
    	}
    	if(currentState_ == states_[1]) 
    	{
    	    if(input_ == validInputs_[2])
    	    {
    	    	currentState_ = states_[2];
    	   	}
    	    else if(input_ == validInputs_[3])
    	    {
    	    	currentState_ = states_[4];
    	   	}
    	   	else
    	   	{
    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	   	}
    	}
    	if(currentState_ == states_[2]) 
    	{
    	    if(input_ == validInputs_[3])
    	   	{
    	    	currentState_ = states_[3];
    	   	}
    	   	else
    	   	{
    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	   	}
    	}
    	if(currentState_ == states_[3]) 
        {
    	   	if(input_ == validInputs_[1])
    	    {
    	    	currentState_ = states_[4];
    	    }
    	    else
    	   	{
    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	   	}
    	}
    	if(currentState_ == states_[4]) 
    	{
    	    if(input_ == validInputs_[0])
    	    {
    	    	currentState_ = states_[1];
    	    }
    	    else if(input_ == validInputs_[2])
    	    {
    	    	currentState_ = states_[5];
    	    }
    	    else
    	    {
    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    }
        if(currentState_ == states_[5]) 
    	{
    	    if(input_ == validInputs_[3])
    	    {
    	    	currentState_ = states_[6];
    	    }
    	   	else
    	   	{
    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	   	}
    	}
        if(currentState_ == states_[6]) 
        {
    	   	if(input_ == validInputs_[0])
    	   	{
    	   		currentState_ = states_[1];
    	   	}
    	   	else
    	    {
    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    }
    	}*/
    	
    	if(currentState_ == "start")    		
    	    	{
    	    	    if(input_ == "move-1")
    	    	    {
    	    	    	currentState_ = "at-loc-1";
    	    	    }
    	    	   	else if(input_ == "move-2")
    	    	    {
    	    	    	currentState_ = "at-loc-2";
    	    	   	}
    	    	   	else 
    	    	    {
    	    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	    }
    	    	}
    	    	if(currentState_ == "at-loc-1") 
    	    	{
    	    	    if(input_ == "grasp")
    	    	    {
    	    	    	currentState_ = "grasped-obj-1";
    	    	   	}
    	    	    else if(input_ == "place")
    	    	    {
    	    	    	currentState_ = "at-loc-2";
    	    	   	}
    	    	   	else
    	    	   	{
    	    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	   	}
    	    	}
    	    	//...
    	    	if(currentState_ == states_[2]) 
    	    	{
    	    	    if(input_ == validInputs_[3])
    	    	   	{
    	    	    	currentState_ = states_[3];
    	    	   	}
    	    	   	else
    	    	   	{
    	    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	   	}
    	    	}
    	    	if(currentState_ == states_[3]) 
    	        {
    	    	   	if(input_ == validInputs_[1])
    	    	    {
    	    	    	currentState_ = states_[4];
    	    	    }
    	    	    else
    	    	   	{
    	    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	   	}
    	    	}
    	    	if(currentState_ == states_[4]) 
    	    	{
    	    	    if(input_ == validInputs_[0])
    	    	    {
    	    	    	currentState_ = states_[1];
    	    	    }
    	    	    else if(input_ == validInputs_[2])
    	    	    {
    	    	    	currentState_ = states_[5];
    	    	    }
    	    	    else
    	    	    {
    	    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	    }
    	        if(currentState_ == states_[5]) 
    	    	{
    	    	    if(input_ == validInputs_[3])
    	    	    {
    	    	    	currentState_ = states_[6];
    	    	    }
    	    	   	else
    	    	   	{
    	    	   		ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	   	}
    	    	}
    	        if(currentState_ == states_[6]) 
    	        {
    	    	   	if(input_ == validInputs_[0])
    	    	   	{
    	    	   		currentState_ = states_[1];
    	    	   	}
    	    	   	else
    	    	    {
    	    	    	ROS_ERROR("Cannot resolve request! The input is either not valid or the movement is not possible from the current state");
    	    	    }
    	    	}
    }
    

    void start()
    {
      srvInput_ = nh_.advertiseService("input", &StateMachine::receiveInput,this);
      srvState_ = nh_.advertiseService("state", &StateMachine::responseState,this);
    }

  private:
    ros::NodeHandle nh_;
    ros::ServiceServer srvInput_;
    ros::ServiceServer srvState_;
    string input_;
    string currentState_;
 //   static const string validInputs_[4];
 //   static const string states_[7]; 
    

};

int main(int argc, char **argv)
{	
 //	const string StateMachine::validInputs_[4] = {"move-1", "move-2", "grasp", "place"};
 // const string StateMachine::states_[7] = {"start", "at-loc-1", "grasped-obj-1", "placed-obj-1", "at-loc-2", "grasped-obj-2", "placed-obj-2"};
    ros::init(argc, argv, "state_machine");
    ros::NodeHandle nh("~");
	StateMachine my_machine(nh);
	try
	{
	   my_machine.start();
	}
	catch(const std::exception& e)
	{
	   ROS_ERROR("%s", e.what());
	   return 0;
	}
	
	ROS_INFO("Ready to start!");
	ros::spin();
	return 0;
}