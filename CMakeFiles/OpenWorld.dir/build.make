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
CMAKE_COMMAND = /home/olafurj/Downloads/CLion-2018.1.5/clion-2018.1.5/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/olafurj/Downloads/CLion-2018.1.5/clion-2018.1.5/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/olafurj/Dropbox/dev/OpenWorld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/olafurj/Dropbox/dev/OpenWorld

# Include any dependencies generated for this target.
include CMakeFiles/OpenWorld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenWorld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenWorld.dir/flags.make

CMakeFiles/OpenWorld.dir/main.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenWorld.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/main.cpp.o -c /home/olafurj/Dropbox/dev/OpenWorld/main.cpp

CMakeFiles/OpenWorld.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/main.cpp > CMakeFiles/OpenWorld.dir/main.cpp.i

CMakeFiles/OpenWorld.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/main.cpp -o CMakeFiles/OpenWorld.dir/main.cpp.s

CMakeFiles/OpenWorld.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/main.cpp.o.requires

CMakeFiles/OpenWorld.dir/main.cpp.o.provides: CMakeFiles/OpenWorld.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/main.cpp.o.provides

CMakeFiles/OpenWorld.dir/main.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/main.cpp.o


CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o: includes/glad/include/glad/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/glad/include/glad/glad.c

CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/glad/include/glad/glad.c > CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.i

CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/glad/include/glad/glad.c -o CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.s

CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.requires

CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.provides: CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.provides

CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o


CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o: includes/stb_image/stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o -c /home/olafurj/Dropbox/dev/OpenWorld/includes/stb_image/stb_image.cpp

CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/stb_image/stb_image.cpp > CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.i

CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/stb_image/stb_image.cpp -o CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.s

CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.requires

CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.provides: CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.provides

CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o


CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o: includes/SOIL/SOIL.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/SOIL/SOIL.c

CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/SOIL/SOIL.c > CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.i

CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/SOIL/SOIL.c -o CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.s

CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.requires

CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.provides: CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.provides

CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o: includes/libconfig/libconfig/libconfig.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfig.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfig.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfig.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o: includes/libconfig/libconfig/libconfigcpp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfigcpp.cc

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfigcpp.cc > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/libconfigcpp.cc -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o: includes/libconfig/libconfig/util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/util.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/util.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/util.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o: includes/libconfig/libconfig/scanctx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanctx.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanctx.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanctx.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o: includes/libconfig/libconfig/strbuf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strbuf.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strbuf.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strbuf.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o: includes/libconfig/libconfig/strvec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strvec.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strvec.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/strvec.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o: includes/libconfig/libconfig/scanner.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanner.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanner.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/scanner.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o


CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o: includes/libconfig/libconfig/grammar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o   -c /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/grammar.c

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/grammar.c > CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.i

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/includes/libconfig/libconfig/grammar.c -o CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.s

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.requires

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.provides: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.provides

CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.provides.build: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o


CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o: OpenEngine/Cubemap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o -c /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Cubemap.cpp

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Cubemap.cpp > CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.i

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Cubemap.cpp -o CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.s

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides

CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o


CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o: CMakeFiles/OpenWorld.dir/flags.make
CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o: OpenEngine/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o -c /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Texture.cpp

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Texture.cpp > CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.i

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/olafurj/Dropbox/dev/OpenWorld/OpenEngine/Texture.cpp -o CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.s

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires:

.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenWorld.dir/build.make CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides.build
.PHONY : CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides

CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.provides.build: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o


# Object files for target OpenWorld
OpenWorld_OBJECTS = \
"CMakeFiles/OpenWorld.dir/main.cpp.o" \
"CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o" \
"CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o" \
"CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o" \
"CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o" \
"CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o" \
"CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o"

# External object files for target OpenWorld
OpenWorld_EXTERNAL_OBJECTS =

OpenWorld: CMakeFiles/OpenWorld.dir/main.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o
OpenWorld: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o
OpenWorld: CMakeFiles/OpenWorld.dir/build.make
OpenWorld: /usr/lib64/libglfw.so.3.2
OpenWorld: /usr/lib64/libGL.so
OpenWorld: /usr/lib64/libGLEW.so
OpenWorld: CMakeFiles/OpenWorld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable OpenWorld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenWorld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenWorld.dir/build: OpenWorld

.PHONY : CMakeFiles/OpenWorld.dir/build

CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/main.cpp.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/glad/include/glad/glad.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/stb_image/stb_image.cpp.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/SOIL/SOIL.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfig.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/libconfigcpp.cc.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/util.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanctx.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strbuf.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/strvec.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/scanner.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/includes/libconfig/libconfig/grammar.c.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/OpenEngine/Cubemap.cpp.o.requires
CMakeFiles/OpenWorld.dir/requires: CMakeFiles/OpenWorld.dir/OpenEngine/Texture.cpp.o.requires

.PHONY : CMakeFiles/OpenWorld.dir/requires

CMakeFiles/OpenWorld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenWorld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenWorld.dir/clean

CMakeFiles/OpenWorld.dir/depend:
	cd /home/olafurj/Dropbox/dev/OpenWorld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/Dropbox/dev/OpenWorld /home/olafurj/Dropbox/dev/OpenWorld /home/olafurj/Dropbox/dev/OpenWorld /home/olafurj/Dropbox/dev/OpenWorld /home/olafurj/Dropbox/dev/OpenWorld/CMakeFiles/OpenWorld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenWorld.dir/depend

