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
include includes/sb6code/CMakeFiles/raytracer.dir/depend.make

# Include the progress variables for this target.
include includes/sb6code/CMakeFiles/raytracer.dir/progress.make

# Include the compile flags for this target's objects.
include includes/sb6code/CMakeFiles/raytracer.dir/flags.make

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o: includes/sb6code/CMakeFiles/raytracer.dir/flags.make
includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o: ../includes/sb6code/src/raytracer/raytracer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o -c /home/olafurj/dev/OpenWorld/includes/sb6code/src/raytracer/raytracer.cpp

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/includes/sb6code/src/raytracer/raytracer.cpp > CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.i

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/includes/sb6code/src/raytracer/raytracer.cpp -o CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.s

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.requires:

.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.requires

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.provides: includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.requires
	$(MAKE) -f includes/sb6code/CMakeFiles/raytracer.dir/build.make includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.provides.build
.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.provides

includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.provides.build: includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o


# Object files for target raytracer
raytracer_OBJECTS = \
"CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o"

# External object files for target raytracer
raytracer_EXTERNAL_OBJECTS =

bin/raytracer: includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o
bin/raytracer: includes/sb6code/CMakeFiles/raytracer.dir/build.make
bin/raytracer: lib/libsb6.a
bin/raytracer: includes/sb6code/CMakeFiles/raytracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/raytracer"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
includes/sb6code/CMakeFiles/raytracer.dir/build: bin/raytracer

.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/build

includes/sb6code/CMakeFiles/raytracer.dir/requires: includes/sb6code/CMakeFiles/raytracer.dir/src/raytracer/raytracer.cpp.o.requires

.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/requires

includes/sb6code/CMakeFiles/raytracer.dir/clean:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -P CMakeFiles/raytracer.dir/cmake_clean.cmake
.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/clean

includes/sb6code/CMakeFiles/raytracer.dir/depend:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code/CMakeFiles/raytracer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : includes/sb6code/CMakeFiles/raytracer.dir/depend

