#ifndef ROS_ASSIGNMENTS_SQUARE_GENERATOR_HPP
#define ROS_ASSIGNMENTS_SQUARE_GENERATOR_HPP

#include <stdexcept>

namespace ros_assignments
{
  class SquareGenerator
  {
    public:
      SquareGenerator(float amplitude = 1.0, float last_value = 0.0, float epsilon = 0.05, int time_stamp = 0) :
        amplitude_(amplitude), time_stamp_(time_stamp), epsilon_(epsilon), last_value_(last_value)
      {}

      ~SquareGenerator() {}

      float current_value() const
      {
        check_parameters();

        float result;
        result = last_value_;

        if ((time_stamp_%10) == 0 && result < epsilon_)
        {
          result = amplitude_;
        }
        else if ((time_stamp_%10) == 0 && (result - amplitude_) < epsilon_)
        {
          result = 0.0;
        }

        return result;
      }

      void check_parameters() const
      {
        if (amplitude_ <= 0.0)
          throw std::runtime_error("Given non-positive amplitude.");
      }

      void step_forward()
      {
    	float value = current_value();
        last_value_ = value;
        time_stamp_++;
      }


    private:
      float amplitude_, last_value_, epsilon_;
      int time_stamp_;
  };
}

#endif // ROS_ASSIGNMENTS_SQUARE_GENERATOR_HPP
