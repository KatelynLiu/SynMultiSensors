# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ly/visual_compass/DataSyn_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ly/visual_compass/DataSyn_ws/build

# Include any dependencies generated for this target.
include synrgbwir/CMakeFiles/synrgbwir_node.dir/depend.make

# Include the progress variables for this target.
include synrgbwir/CMakeFiles/synrgbwir_node.dir/progress.make

# Include the compile flags for this target's objects.
include synrgbwir/CMakeFiles/synrgbwir_node.dir/flags.make

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o: synrgbwir/CMakeFiles/synrgbwir_node.dir/flags.make
synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o: /home/ly/visual_compass/DataSyn_ws/src/synrgbwir/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ly/visual_compass/DataSyn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o"
	cd /home/ly/visual_compass/DataSyn_ws/build/synrgbwir && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/synrgbwir_node.dir/src/main.cpp.o -c /home/ly/visual_compass/DataSyn_ws/src/synrgbwir/src/main.cpp

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/synrgbwir_node.dir/src/main.cpp.i"
	cd /home/ly/visual_compass/DataSyn_ws/build/synrgbwir && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ly/visual_compass/DataSyn_ws/src/synrgbwir/src/main.cpp > CMakeFiles/synrgbwir_node.dir/src/main.cpp.i

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/synrgbwir_node.dir/src/main.cpp.s"
	cd /home/ly/visual_compass/DataSyn_ws/build/synrgbwir && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ly/visual_compass/DataSyn_ws/src/synrgbwir/src/main.cpp -o CMakeFiles/synrgbwir_node.dir/src/main.cpp.s

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.requires:

.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.requires

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.provides: synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.requires
	$(MAKE) -f synrgbwir/CMakeFiles/synrgbwir_node.dir/build.make synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.provides.build
.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.provides

synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.provides.build: synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o


# Object files for target synrgbwir_node
synrgbwir_node_OBJECTS = \
"CMakeFiles/synrgbwir_node.dir/src/main.cpp.o"

# External object files for target synrgbwir_node
synrgbwir_node_EXTERNAL_OBJECTS =

/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: synrgbwir/CMakeFiles/synrgbwir_node.dir/build.make
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libcv_bridge.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libimage_transport.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libmessage_filters.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libclass_loader.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/libPocoFoundation.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroscpp.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/liblog4cxx.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroslib.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librospack.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librostime.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libcpp_common.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /home/ly/visual_compass/DataSyn_ws/devel/lib/libsynrgbwir.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libcv_bridge.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libimage_transport.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libmessage_filters.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libclass_loader.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/libPocoFoundation.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroscpp.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/liblog4cxx.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroslib.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librospack.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/librostime.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /opt/ros/indigo/lib/libcpp_common.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node: synrgbwir/CMakeFiles/synrgbwir_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ly/visual_compass/DataSyn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node"
	cd /home/ly/visual_compass/DataSyn_ws/build/synrgbwir && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/synrgbwir_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
synrgbwir/CMakeFiles/synrgbwir_node.dir/build: /home/ly/visual_compass/DataSyn_ws/devel/lib/synrgbwir/synrgbwir_node

.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/build

synrgbwir/CMakeFiles/synrgbwir_node.dir/requires: synrgbwir/CMakeFiles/synrgbwir_node.dir/src/main.cpp.o.requires

.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/requires

synrgbwir/CMakeFiles/synrgbwir_node.dir/clean:
	cd /home/ly/visual_compass/DataSyn_ws/build/synrgbwir && $(CMAKE_COMMAND) -P CMakeFiles/synrgbwir_node.dir/cmake_clean.cmake
.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/clean

synrgbwir/CMakeFiles/synrgbwir_node.dir/depend:
	cd /home/ly/visual_compass/DataSyn_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ly/visual_compass/DataSyn_ws/src /home/ly/visual_compass/DataSyn_ws/src/synrgbwir /home/ly/visual_compass/DataSyn_ws/build /home/ly/visual_compass/DataSyn_ws/build/synrgbwir /home/ly/visual_compass/DataSyn_ws/build/synrgbwir/CMakeFiles/synrgbwir_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : synrgbwir/CMakeFiles/synrgbwir_node.dir/depend
