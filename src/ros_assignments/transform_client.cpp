#include "ros/ros.h"
#include "ros_assignments/TransformService.h"

using namespace std;

class TransformClient
{
    public:
        TransformClient(const ros::NodeHandle& nh): nh_(nh)
        {}

        ~TransformClient() {}

    ros::ServiceClient getClient()
	{
    	return client_;
    }

	ros_assignments::TransformService getService()
	{
		return srv_;
	}

    void start()
    {
        client_ = nh_.serviceClient<ros_assignments::TransformService>("/transformer/transform_service");
    }

    private:
      ros::NodeHandle nh_;
      ros::ServiceClient client_;
      ros_assignments::TransformService srv_;
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "transform_client");

    if (argc != 10)
    {
        ROS_INFO("usage: add_two_ints_client X Y");
        return 1;
    }

    ros::NodeHandle nh("~");
    TransformClient my_client(nh);
    string state;
    try
	{
		my_client.start();
	}
	catch(const std::exception& e)
	{
		ROS_ERROR("%s", e.what());
		return 0;
	}

	ros::ServiceClient client = my_client.getClient();
	ros_assignments::TransformService srv = my_client.getService();
	srv.request.frame_name = argv[1];
	srv.request.received_pose.header.frame_id = argv[2];
	srv.request.received_pose.pose.position.x = atof(argv[3]);
	srv.request.received_pose.pose.position.y = atof(argv[4]);
	srv.request.received_pose.pose.position.z = atof(argv[5]);
	srv.request.received_pose.pose.orientation.x = atof(argv[6]);
	srv.request.received_pose.pose.orientation.y = atof(argv[7]);
	srv.request.received_pose.pose.orientation.z = atof(argv[8]);
	srv.request.received_pose.pose.orientation.w = atof(argv[9]);

	// TODO: ADD THE OTHER ARGS AND FIGURE OUT THE COMMUNICATION AND ARG PASSING
     ROS_INFO("name of the child frame: %s name of the parent frame: %s position: %f %f %f orientation: %f %f %f %f",
     srv.request.frame_name.c_str(), srv.request.received_pose.header.frame_id.c_str(), srv.request.received_pose.pose.position.x,
     srv.request.received_pose.pose.position.y, srv.request.received_pose.pose.position.z,
     srv.request.received_pose.pose.orientation.x, srv.request.received_pose.pose.orientation.y,
     srv.request.received_pose.pose.orientation.z, srv.request.received_pose.pose.orientation.w);

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
