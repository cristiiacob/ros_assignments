#ifndef ROS_ASSIGNMENTS_TRIANGLE_GENERATOR_HPP
#define ROS_ASSIGNMENTS_TRIANGLE_GENERATOR_HPP

#include <exception>

namespace ros_assignments
{
  class TriangleGenerator
  {
    public:
      TriangleGenerator(float amplitude = 1.0, double increment = 0.1,
          float epsilon = 0.005) : 
        amplitude_(amplitude), increment_(increment), epsilon_(epsilon)
      {
        reset();
      }

      ~TriangleGenerator() {}
  
      float current_value() const
      {
        check_parameters();

        float result;

        if ((amplitude_ - last_value_) < epsilon_ && raising_slope_)
        {
          result = last_value_ - increment_;
        }
        else if ( last_value_ < amplitude_ && raising_slope_)
        {
          result = last_value_ + increment_;
        }
        else if (last_value_ < epsilon_ && !raising_slope_)
        {
          result = last_value_ + increment_;
        }
        else if (last_value_ > 0.0 && !raising_slope_)
        {
          result = last_value_ - increment_;
        }
        return result;
      }

      void check_parameters() const
      {
        if (amplitude_ <= 0.0)
          throw std::runtime_error("Given non-positive amplitude.");
        if (epsilon_ <= 0.0)
          throw std::runtime_error("Given non-positive epsilon.");
        if (increment_ <= 0.0)
          throw std::runtime_error("Given non-positive increment.");
        if (increment_ > amplitude_)
          throw std::runtime_error("Given increment that is bigger than amplitude.");
        if (epsilon_ > increment_)
          throw std::runtime_error("Given epsilon that is bigger than increment.");
      }

      void step_forward()
      {
        float value = current_value();

        if ((amplitude_ - last_value_) < epsilon_ && raising_slope_)
        {
          raising_slope_= false;
        }
        else if (last_value_ < epsilon_ && !raising_slope_)
        {
          raising_slope_ = true;
        }

        last_value_ = value;
      }

      void reset()
      {
        last_value_ = 0.0;
        raising_slope_ = true;
      }

    private:
      float last_value_, amplitude_, increment_, epsilon_;
      bool raising_slope_;
  };
}

#endif // ROS_ASSIGNMENTS_TRIANGLE_GENERATOR_HPP
