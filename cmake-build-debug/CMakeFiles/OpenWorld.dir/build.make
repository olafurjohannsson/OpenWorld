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
include CMakeFiles/OpenWorld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenWorld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenWorld.dir/flags.make

CMakeFiles/OpenWorld.dir/main.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenWorld.dir/main.cpp.o"
	/opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/main.cpp.o -c /home/olafurj/dev/OpenWorld/main.cpp

CMakeFiles/OpenWorld.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/main.cpp.i"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/main.cpp > CMakeFiles/OpenWorld.dir/main.cpp.i

CMakeFiles/OpenWorld.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/main.cpp.s"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/main.cpp -o CMakeFiles/OpenWorld.dir/main.cpp.s

CMakeFiles/OpenWorld.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/main.cpp.o.requires

CMakeFiles/OpenWorld.dir/main.cpp.o.provides: CMakeFiles/OpenWorld.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/main.cpp.o.provides

CMakeFiles/OpenWorld.dir/main.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/main.cpp.o


CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o: ../OpenEngine/Cubemap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o"
	/opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o -c /home/olafurj/dev/OpenWorld/OpenEngine/Cubemap.cpp

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/OpenEngine/Cubemap.cpp > CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/OpenEngine/Cubemap.cpp -o CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o


CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o: ../OpenEngine/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o"
	/opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o -c /home/olafurj/dev/OpenWorld/OpenEngine/Texture.cpp

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/dev/OpenWorld/OpenEngine/Texture.cpp > CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/dev/OpenWorld/OpenEngine/Texture.cpp -o CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o


# Object files for target OpenWorld
OpenWorld_OBJECTS = \
"CMakeFiles/OpenWorld.dir/main.cpp.o" \
"CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o" \
"CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o"

# External object files for target OpenWorld
OpenWorld_EXTERNAL_OBJECTS =

OpenWorld: CMakeFiles/OpenWorld.dir/main.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/build.make
OpenWorld: /usr/lib64/libglfw.so.3.2
OpenWorld: src/libs/glad/libglad.a
OpenWorld: src/libs/libconfig/liblibconfig.a
OpenWorld: src/libs/SOIL/libSOIL.a
OpenWorld: src/libs/fmt/libfmt.a
OpenWorld: /usr/lib64/libGL.so
OpenWorld: /usr/lib64/libGLEW.so
OpenWorld: CMakeFiles/OpenWorld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OpenWorld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenWorld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenWorld.dir/build: OpenWorld

.PHONY : CMakeFiles/OpenWorld.dir/build

CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/main.cpp.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires

.PHONY : CMakeFiles/OpenWorld.dir/requires

CMakeFiles/OpenWorld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenWorld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenWorld.dir/clean

CMakeFiles/OpenWorld.dir/depend:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles/OpenWorld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenWorld.dir/depend

