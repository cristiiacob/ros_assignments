#include <ros_assignments/triangle_generator_node.hpp>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "triangle_generator");
    ros::NodeHandle nh("~");

    ros_assignments::TriangleGeneratorNode my_generator(nh);
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
