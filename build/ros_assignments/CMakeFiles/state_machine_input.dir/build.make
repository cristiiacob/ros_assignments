# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cristi/assignments/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cristi/assignments/build

# Include any dependencies generated for this target.
include ros_assignments/CMakeFiles/state_machine_input.dir/depend.make

# Include the progress variables for this target.
include ros_assignments/CMakeFiles/state_machine_input.dir/progress.make

# Include the compile flags for this target's objects.
include ros_assignments/CMakeFiles/state_machine_input.dir/flags.make

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o: ros_assignments/CMakeFiles/state_machine_input.dir/flags.make
ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o: /home/cristi/assignments/src/ros_assignments/src/ros_assignments/state_machine_input.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cristi/assignments/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o"
	cd /home/cristi/assignments/build/ros_assignments && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o -c /home/cristi/assignments/src/ros_assignments/src/ros_assignments/state_machine_input.cpp

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.i"
	cd /home/cristi/assignments/build/ros_assignments && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cristi/assignments/src/ros_assignments/src/ros_assignments/state_machine_input.cpp > CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.i

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.s"
	cd /home/cristi/assignments/build/ros_assignments && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cristi/assignments/src/ros_assignments/src/ros_assignments/state_machine_input.cpp -o CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.s

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.requires:
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.requires

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.provides: ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.requires
	$(MAKE) -f ros_assignments/CMakeFiles/state_machine_input.dir/build.make ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.provides.build
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.provides

ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.provides.build: ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o

# Object files for target state_machine_input
state_machine_input_OBJECTS = \
"CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o"

# External object files for target state_machine_input
state_machine_input_EXTERNAL_OBJECTS =

/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: ros_assignments/CMakeFiles/state_machine_input.dir/build.make
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/libroscpp.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/librosconsole.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/liblog4cxx.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/librostime.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /opt/ros/indigo/lib/libcpp_common.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/cristi/assignments/devel/lib/ros_assignments/state_machine_input: ros_assignments/CMakeFiles/state_machine_input.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/cristi/assignments/devel/lib/ros_assignments/state_machine_input"
	cd /home/cristi/assignments/build/ros_assignments && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/state_machine_input.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_assignments/CMakeFiles/state_machine_input.dir/build: /home/cristi/assignments/devel/lib/ros_assignments/state_machine_input
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/build

ros_assignments/CMakeFiles/state_machine_input.dir/requires: ros_assignments/CMakeFiles/state_machine_input.dir/src/ros_assignments/state_machine_input.cpp.o.requires
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/requires

ros_assignments/CMakeFiles/state_machine_input.dir/clean:
	cd /home/cristi/assignments/build/ros_assignments && $(CMAKE_COMMAND) -P CMakeFiles/state_machine_input.dir/cmake_clean.cmake
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/clean

ros_assignments/CMakeFiles/state_machine_input.dir/depend:
	cd /home/cristi/assignments/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cristi/assignments/src /home/cristi/assignments/src/ros_assignments /home/cristi/assignments/build /home/cristi/assignments/build/ros_assignments /home/cristi/assignments/build/ros_assignments/CMakeFiles/state_machine_input.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_assignments/CMakeFiles/state_machine_input.dir/depend

