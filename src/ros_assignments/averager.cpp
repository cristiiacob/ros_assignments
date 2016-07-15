#include <ros/ros.h>
#include <exception>
#include <std_msgs/Float32.h>
#include <list>

	std::list<float> numbers;

class Averager
{
  public:
    Averager(const ros::NodeHandle& nh): nh_(nh)
    {
      // TODO: init internal variables
    }
    ~Averager() {}

    void start()
    {
      // TODO: init pub_
      // TODO: init sub_

      sub_ = nh_.subscribe("raw", 1, &Averager::callback, this);
      pub_ = nh_.advertise<std_msgs::Float32>("avg", 1);
    }

  private:
    ros::NodeHandle nh_;
    ros::Publisher pub_;
    ros::Subscriber sub_;

    void callback(const std_msgs::Float32::ConstPtr& in_msg)
    {
        // TODO: do something

        // TODO: publish result over pub_

    	int n = 10;
    	float sum = 0;
    	float avg = 0;


        if(numbers.size() < n)
        {
            numbers.push_front(in_msg->data);
        }
        else
        {
            numbers.pop_back();
            numbers.push_front(in_msg->data);
        }

            for (std::list<float>::iterator it = numbers.begin(); it != numbers.end(); it++)
            {
                sum = sum + *it;
            }

        avg = sum/(float)numbers.size();
//      avg = 3;
        ROS_INFO("I heard: [%f]", in_msg->data);

        std_msgs::Float32 msg;
        msg.data = avg;
        ROS_INFO("Average: %f", msg.data);
        pub_.publish(msg);

    }

    // TODO: some internal variables

};


int main(int argc, char **argv)
{
    ros::init(argc, argv, "averager");
    ros::NodeHandle nh("~");

    Averager my_averager(nh);
    try
    {
      my_averager.start();
    }
    catch(const std::exception& e)
    {
      ROS_ERROR("%s", e.what());
      return 0;
    }

    ros::spin();

    return 0;
}

