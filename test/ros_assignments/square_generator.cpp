#include <gtest/gtest.h>
#include <ros_assignments/square_generator.hpp>

class SquareGeneratorTest : public ::testing::Test
{
  protected:
    virtual void SetUp()
    {
      // initialize your global testing variables here
    }

    virtual void TearDown()
    {
      // destroy your global testing variables here
    }

    // define your global testing variables here
};

TEST_F(SquareGeneratorTest, RunTest)
{
  ros_assignments::SquareGenerator my_square;
  for(size_t i=1; i<11; ++i)
  {
    EXPECT_NEAR(my_triangle.current_value(), 0.1*i, 1e-06);
    EXPECT_NO_THROW(my_triangle.step_forward());
  }

  for(size_t i=9; i>0; --i)
  {
    EXPECT_NEAR(my_square.current_value(), 0.1*i, 1e-06);
    EXPECT_NO_THROW(my_square.step_forward());
  }

  for(size_t i=0; i<11; ++i)
  {
    EXPECT_NEAR(my_square.current_value(), 0.1*i, 1e-06);
    EXPECT_NO_THROW(my_square.step_forward());
  }

}
