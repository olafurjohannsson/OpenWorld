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
include includes/sb6code/CMakeFiles/movingtri.dir/depend.make

# Include the progress variables for this target.
include includes/sb6code/CMakeFiles/movingtri.dir/progress.make

# Include the compile flags for this target's objects.
include includes/sb6code/CMakeFiles/movingtri.dir/flags.make

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o: includes/sb6code/CMakeFiles/movingtri.dir/flags.make
includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o: ../includes/sb6code/src/movingtri/movingtri.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o -c /home/olafurj/dev/OpenWorld/includes/sb6code/src/movingtri/movingtri.cpp

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/includes/sb6code/src/movingtri/movingtri.cpp > CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.i

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/includes/sb6code/src/movingtri/movingtri.cpp -o CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.s

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.requires:

.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.requires

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.provides: includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.requires
	$(MAKE) -f includes/sb6code/CMakeFiles/movingtri.dir/build.make includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.provides.build
.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.provides

includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.provides.build: includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o


# Object files for target movingtri
movingtri_OBJECTS = \
"CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o"

# External object files for target movingtri
movingtri_EXTERNAL_OBJECTS =

bin/movingtri: includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o
bin/movingtri: includes/sb6code/CMakeFiles/movingtri.dir/build.make
bin/movingtri: lib/libsb6.a
bin/movingtri: includes/sb6code/CMakeFiles/movingtri.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/movingtri"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/movingtri.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
includes/sb6code/CMakeFiles/movingtri.dir/build: bin/movingtri

.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/build

includes/sb6code/CMakeFiles/movingtri.dir/requires: includes/sb6code/CMakeFiles/movingtri.dir/src/movingtri/movingtri.cpp.o.requires

.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/requires

includes/sb6code/CMakeFiles/movingtri.dir/clean:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code && $(CMAKE_COMMAND) -P CMakeFiles/movingtri.dir/cmake_clean.cmake
.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/clean

includes/sb6code/CMakeFiles/movingtri.dir/depend:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code /home/olafurj/dev/OpenWorld/cmake-build-debug/includes/sb6code/CMakeFiles/movingtri.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : includes/sb6code/CMakeFiles/movingtri.dir/depend

