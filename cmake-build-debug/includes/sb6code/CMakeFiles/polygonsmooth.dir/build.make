# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/olafurj/Downloads/clion-2018.1.7/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/olafurj/Downloads/clion-2018.1.7/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/olafurj/dev/OpenWorld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/olafurj/dev/OpenWorld/cmake-build-debug

# Include any dependencies generated for this target.
include includes/sb6code/CMakeFiles/polygonsmooth.dir/depend.make

# Include the progress variables for this target.
include includes/sb6code/CMakeFiles/polygonsmooth.dir/progress.make

# Include the compile flags for this target's objects.
include includes/sb6code/CMakeFiles/polygonsmooth.dir/flags.make

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o: includes/sb6code/CMakeFiles/polygonsmooth.dir/flags.make
includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o: ../includes/sb6code/src/polygonsmooth/polygonsmooth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o -c /home/olafurj/dev/OpenWorld/includes/sb6code/src/polygonsmooth/polygonsmooth.cpp

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/includes/sb6code/src/polygonsmooth/polygonsmooth.cpp > CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.i

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/includes/sb6code/src/polygonsmooth/polygonsmooth.cpp -o CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.s

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.requires:

.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.requires

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.provides: includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.requires
	$(MAKE) -f includes/sb6code/CMakeFiles/polygonsmooth.dir/build.make includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.provides.build
.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.provides

includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.provides.build: includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o


# Object files for target polygonsmooth
polygonsmooth_OBJECTS = \
"CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o"

# External object files for target polygonsmooth
polygonsmooth_EXTERNAL_OBJECTS =

bin/polygonsmooth: includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o
bin/polygonsmooth: includes/sb6code/CMakeFiles/polygonsmooth.dir/build.make
bin/polygonsmooth: lib/libsb6.a
bin/polygonsmooth: includes/sb6code/CMakeFiles/polygonsmooth.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/polygonsmooth"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polygonsmooth.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
includes/sb6code/CMakeFiles/polygonsmooth.dir/build: bin/polygonsmooth

.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/build

includes/sb6code/CMakeFiles/polygonsmooth.dir/requires: includes/sb6code/CMakeFiles/polygonsmooth.dir/src/polygonsmooth/polygonsmooth.cpp.o.requires

.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/requires

includes/sb6code/CMakeFiles/polygonsmooth.dir/clean:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -P CMakeFiles/polygonsmooth.dir/cmake_clean.cmake
.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/clean

includes/sb6code/CMakeFiles/polygonsmooth.dir/depend:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code/CMakeFiles/polygonsmooth.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : includes/sb6code/CMakeFiles/polygonsmooth.dir/depend

