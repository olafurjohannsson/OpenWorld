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
include src/libs/SOIL/CMakeFiles/SOIL.dir/depend.make

# Include the progress variables for this target.
include src/libs/SOIL/CMakeFiles/SOIL.dir/progress.make

# Include the compile flags for this target's objects.
include src/libs/SOIL/CMakeFiles/SOIL.dir/flags.make

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o: src/libs/SOIL/CMakeFiles/SOIL.dir/flags.make
src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o: ../src/libs/SOIL/SOIL/SOIL.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SOIL.dir/SOIL/SOIL.c.o   -c /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/SOIL.c

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SOIL.dir/SOIL/SOIL.c.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/SOIL.c > CMakeFiles/SOIL.dir/SOIL/SOIL.c.i

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SOIL.dir/SOIL/SOIL.c.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/SOIL.c -o CMakeFiles/SOIL.dir/SOIL/SOIL.c.s

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.requires:

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.requires

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.provides: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.requires
	$(MAKE) -f src/libs/SOIL/CMakeFiles/SOIL.dir/build.make src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.provides.build
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.provides

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.provides.build: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o


src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o: src/libs/SOIL/CMakeFiles/SOIL.dir/flags.make
src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o: ../src/libs/SOIL/SOIL/image_DXT.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o   -c /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_DXT.c

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SOIL.dir/SOIL/image_DXT.c.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_DXT.c > CMakeFiles/SOIL.dir/SOIL/image_DXT.c.i

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SOIL.dir/SOIL/image_DXT.c.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_DXT.c -o CMakeFiles/SOIL.dir/SOIL/image_DXT.c.s

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.requires:

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.requires

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.provides: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.requires
	$(MAKE) -f src/libs/SOIL/CMakeFiles/SOIL.dir/build.make src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.provides.build
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.provides

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.provides.build: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o


src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o: src/libs/SOIL/CMakeFiles/SOIL.dir/flags.make
src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o: ../src/libs/SOIL/SOIL/image_helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SOIL.dir/SOIL/image_helper.c.o   -c /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_helper.c

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SOIL.dir/SOIL/image_helper.c.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_helper.c > CMakeFiles/SOIL.dir/SOIL/image_helper.c.i

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SOIL.dir/SOIL/image_helper.c.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/image_helper.c -o CMakeFiles/SOIL.dir/SOIL/image_helper.c.s

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.requires:

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.requires

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.provides: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.requires
	$(MAKE) -f src/libs/SOIL/CMakeFiles/SOIL.dir/build.make src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.provides.build
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.provides

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.provides.build: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o


src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o: src/libs/SOIL/CMakeFiles/SOIL.dir/flags.make
src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o: ../src/libs/SOIL/SOIL/stb_image_aug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o   -c /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/stb_image_aug.c

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.i"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/stb_image_aug.c > CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.i

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.s"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && /opt/rh/devtoolset-8/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/olafurj/dev/OpenWorld/src/libs/SOIL/SOIL/stb_image_aug.c -o CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.s

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.requires:

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.requires

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.provides: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.requires
	$(MAKE) -f src/libs/SOIL/CMakeFiles/SOIL.dir/build.make src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.provides.build
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.provides

src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.provides.build: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o


# Object files for target SOIL
SOIL_OBJECTS = \
"CMakeFiles/SOIL.dir/SOIL/SOIL.c.o" \
"CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o" \
"CMakeFiles/SOIL.dir/SOIL/image_helper.c.o" \
"CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o"

# External object files for target SOIL
SOIL_EXTERNAL_OBJECTS =

src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o
src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o
src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o
src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o
src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/build.make
src/libs/SOIL/libSOIL.a: src/libs/SOIL/CMakeFiles/SOIL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/olafurj/dev/OpenWorld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libSOIL.a"
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && $(CMAKE_COMMAND) -P CMakeFiles/SOIL.dir/cmake_clean_target.cmake
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SOIL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libs/SOIL/CMakeFiles/SOIL.dir/build: src/libs/SOIL/libSOIL.a

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/build

src/libs/SOIL/CMakeFiles/SOIL.dir/requires: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/SOIL.c.o.requires
src/libs/SOIL/CMakeFiles/SOIL.dir/requires: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_DXT.c.o.requires
src/libs/SOIL/CMakeFiles/SOIL.dir/requires: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/image_helper.c.o.requires
src/libs/SOIL/CMakeFiles/SOIL.dir/requires: src/libs/SOIL/CMakeFiles/SOIL.dir/SOIL/stb_image_aug.c.o.requires

.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/requires

src/libs/SOIL/CMakeFiles/SOIL.dir/clean:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL && $(CMAKE_COMMAND) -P CMakeFiles/SOIL.dir/cmake_clean.cmake
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/clean

src/libs/SOIL/CMakeFiles/SOIL.dir/depend:
	cd /home/olafurj/dev/OpenWorld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olafurj/dev/OpenWorld /home/olafurj/dev/OpenWorld/src/libs/SOIL /home/olafurj/dev/OpenWorld/cmake-build-debug /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL /home/olafurj/dev/OpenWorld/cmake-build-debug/src/libs/SOIL/CMakeFiles/SOIL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libs/SOIL/CMakeFiles/SOIL.dir/depend
