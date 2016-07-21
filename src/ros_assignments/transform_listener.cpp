#include "ros/ros.h"
#include "ros_assignments/TransformService.h"
#include <std_msgs/String.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PoseStamped.h>

using namespace std;

class TransformService
{

    public:
        TransformService(const ros::NodeHandle& nh): nh_(nh)
        {}

        ~TransformService() {}

        bool receiveTransform(ros_assignments::TransformService::Request &req,
                              ros_assignments::TransformService::Response &res)
        {
            succeed_ = false;
            ROS_INFO("Received pose to be referenced to %s", req.frame_name.c_str());
            ROS_INFO("Base pose %s ", req.received_pose.header.frame_id.c_str());
            frame_name_ = req.frame_name;
            try
            {
                listenAndRespond(req.received_pose.header.frame_id, frame_name_);
                tf::StampedTransform result = transformed_;
                res.succeed = succeed_;
                if (res.succeed)
                {
                    ROS_INFO_STREAM("Succeded? True!");
                }
                else
                {
                    ROS_INFO_STREAM("Succeded? False!");
                }
                setVariables(result, res);
                ROS_INFO("Transformed to required pose");
                res.succeed = true;
            }
            catch (const std::exception& ex)
            {
                 ROS_ERROR("%s",ex.what());
            }
            return true;
        }

        void setVariables(tf::StampedTransform result,
                              ros_assignments::TransformService::Response &res)

        {
             res.transformed_pose.pose.position.x = result.getOrigin().getX();
             res.transformed_pose.pose.position.y = result.getOrigin().getY();
             res.transformed_pose.pose.position.z = result.getOrigin().getZ();
             res.transformed_pose.pose.orientation.x = result.getRotation().getX();
             res.transformed_pose.pose.orientation.y = result.getRotation().getY();
             res.transformed_pose.pose.orientation.z = result.getRotation().getZ();
             res.transformed_pose.pose.orientation.w = result.getRotation().getW();
             ROS_INFO_STREAM("X position " << res.transformed_pose.pose.position.x);
             ROS_INFO_STREAM("Y position " << res.transformed_pose.pose.position.y);
             ROS_INFO_STREAM("Z position " << res.transformed_pose.pose.position.z);
             ROS_INFO_STREAM("X orientation " << res.transformed_pose.pose.orientation.x);
             ROS_INFO_STREAM("Y orientation " << res.transformed_pose.pose.orientation.y);
             ROS_INFO_STREAM("Z orientation " << res.transformed_pose.pose.orientation.z);
             ROS_INFO_STREAM("W orientation " << res.transformed_pose.pose.orientation.w);
        }

        void listenAndRespond(string frame_id_arg, string child_frame_id_arg)
        {
            string frame_id = frame_id_arg;
            string child_frame_id = child_frame_id_arg;

            ROS_INFO("Parent %s", frame_id.c_str());
            ROS_INFO("Child %s", child_frame_id.c_str());
            try
            {
                listener_.lookupTransform(frame_id, child_frame_id, ros::Time(0), transformed_);
                succeed_ = true;
            }
            catch (tf::TransformException& ex)
            {
                ROS_ERROR("%s", ex.what());
            }
        }

        void start()
        {
            srv_ = nh_.advertiseService("transform_service", &TransformService::receiveTransform,this);
        }

    private:
        ros::NodeHandle nh_;
        ros::ServiceServer srv_;
        string frame_name_;
        bool succeed_;
        tf::TransformListener listener_;
        tf::StampedTransform transformed_;
};

int main(int argc, char **argv)
{
    ros::init(argc, argv,"transformer");
    ros::NodeHandle nh("~");

    TransformService my_transform(nh);
    try
    {
        my_transform.start();
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
