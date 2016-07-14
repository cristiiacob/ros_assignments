## Unit tests
### Running unit tests
We use Google's unit testing framework called ```googletest``` or ```gtest```. There are two interesting pages documenting ```gtest```

* https://github.com/google/googletest/blob/master/googletest/docs/Primer.md
* https://github.com/google/googletest/blob/master/googletest/docs/AdvancedGuide.md

The ```catkin``` build system of ```ROS``` comes with a built in ```gtest``` to run unit tests. Envoke tests for all packages in your workspace like this:
```shell
catkin_make run_tests
```

### Unit tests guidelines
The various tests are usually put into the sub-directory ```test``` of a ```ROS``` package. 

```gtest``` is usually used for testing ROS-agnostic computations, i.e. computations that can be done without the help of other ```ROS``` nodes.

In order to maximize the test coverage of your packages, you can separate computations into ROS-agnostic and ROS-dependent functionalities. For an example look at the class ```TriangleGenerator``` in this package.
