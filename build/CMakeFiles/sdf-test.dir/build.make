# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/barry/Documents/Projects/sdf-test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/barry/Documents/Projects/sdf-test/build

# Include any dependencies generated for this target.
include CMakeFiles/sdf-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sdf-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sdf-test.dir/flags.make

CMakeFiles/sdf-test.dir/src/main.cpp.o: CMakeFiles/sdf-test.dir/flags.make
CMakeFiles/sdf-test.dir/src/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/barry/Documents/Projects/sdf-test/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sdf-test.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sdf-test.dir/src/main.cpp.o -c /home/barry/Documents/Projects/sdf-test/src/main.cpp

CMakeFiles/sdf-test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdf-test.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/barry/Documents/Projects/sdf-test/src/main.cpp > CMakeFiles/sdf-test.dir/src/main.cpp.i

CMakeFiles/sdf-test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdf-test.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/barry/Documents/Projects/sdf-test/src/main.cpp -o CMakeFiles/sdf-test.dir/src/main.cpp.s

CMakeFiles/sdf-test.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/sdf-test.dir/src/main.cpp.o.requires

CMakeFiles/sdf-test.dir/src/main.cpp.o.provides: CMakeFiles/sdf-test.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdf-test.dir/build.make CMakeFiles/sdf-test.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/sdf-test.dir/src/main.cpp.o.provides

CMakeFiles/sdf-test.dir/src/main.cpp.o.provides.build: CMakeFiles/sdf-test.dir/src/main.cpp.o

CMakeFiles/sdf-test.dir/src/window.cpp.o: CMakeFiles/sdf-test.dir/flags.make
CMakeFiles/sdf-test.dir/src/window.cpp.o: ../src/window.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/barry/Documents/Projects/sdf-test/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sdf-test.dir/src/window.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sdf-test.dir/src/window.cpp.o -c /home/barry/Documents/Projects/sdf-test/src/window.cpp

CMakeFiles/sdf-test.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdf-test.dir/src/window.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/barry/Documents/Projects/sdf-test/src/window.cpp > CMakeFiles/sdf-test.dir/src/window.cpp.i

CMakeFiles/sdf-test.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdf-test.dir/src/window.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/barry/Documents/Projects/sdf-test/src/window.cpp -o CMakeFiles/sdf-test.dir/src/window.cpp.s

CMakeFiles/sdf-test.dir/src/window.cpp.o.requires:
.PHONY : CMakeFiles/sdf-test.dir/src/window.cpp.o.requires

CMakeFiles/sdf-test.dir/src/window.cpp.o.provides: CMakeFiles/sdf-test.dir/src/window.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdf-test.dir/build.make CMakeFiles/sdf-test.dir/src/window.cpp.o.provides.build
.PHONY : CMakeFiles/sdf-test.dir/src/window.cpp.o.provides

CMakeFiles/sdf-test.dir/src/window.cpp.o.provides.build: CMakeFiles/sdf-test.dir/src/window.cpp.o

CMakeFiles/sdf-test.dir/src/render.cpp.o: CMakeFiles/sdf-test.dir/flags.make
CMakeFiles/sdf-test.dir/src/render.cpp.o: ../src/render.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/barry/Documents/Projects/sdf-test/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sdf-test.dir/src/render.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sdf-test.dir/src/render.cpp.o -c /home/barry/Documents/Projects/sdf-test/src/render.cpp

CMakeFiles/sdf-test.dir/src/render.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdf-test.dir/src/render.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/barry/Documents/Projects/sdf-test/src/render.cpp > CMakeFiles/sdf-test.dir/src/render.cpp.i

CMakeFiles/sdf-test.dir/src/render.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdf-test.dir/src/render.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/barry/Documents/Projects/sdf-test/src/render.cpp -o CMakeFiles/sdf-test.dir/src/render.cpp.s

CMakeFiles/sdf-test.dir/src/render.cpp.o.requires:
.PHONY : CMakeFiles/sdf-test.dir/src/render.cpp.o.requires

CMakeFiles/sdf-test.dir/src/render.cpp.o.provides: CMakeFiles/sdf-test.dir/src/render.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdf-test.dir/build.make CMakeFiles/sdf-test.dir/src/render.cpp.o.provides.build
.PHONY : CMakeFiles/sdf-test.dir/src/render.cpp.o.provides

CMakeFiles/sdf-test.dir/src/render.cpp.o.provides.build: CMakeFiles/sdf-test.dir/src/render.cpp.o

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o: CMakeFiles/sdf-test.dir/flags.make
CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o: ../src/sdfshape.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/barry/Documents/Projects/sdf-test/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o -c /home/barry/Documents/Projects/sdf-test/src/sdfshape.cpp

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdf-test.dir/src/sdfshape.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/barry/Documents/Projects/sdf-test/src/sdfshape.cpp > CMakeFiles/sdf-test.dir/src/sdfshape.cpp.i

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdf-test.dir/src/sdfshape.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/barry/Documents/Projects/sdf-test/src/sdfshape.cpp -o CMakeFiles/sdf-test.dir/src/sdfshape.cpp.s

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.requires:
.PHONY : CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.requires

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.provides: CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdf-test.dir/build.make CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.provides.build
.PHONY : CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.provides

CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.provides.build: CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o

# Object files for target sdf-test
sdf__test_OBJECTS = \
"CMakeFiles/sdf-test.dir/src/main.cpp.o" \
"CMakeFiles/sdf-test.dir/src/window.cpp.o" \
"CMakeFiles/sdf-test.dir/src/render.cpp.o" \
"CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o"

# External object files for target sdf-test
sdf__test_EXTERNAL_OBJECTS =

sdf-test: CMakeFiles/sdf-test.dir/src/main.cpp.o
sdf-test: CMakeFiles/sdf-test.dir/src/window.cpp.o
sdf-test: CMakeFiles/sdf-test.dir/src/render.cpp.o
sdf-test: CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o
sdf-test: CMakeFiles/sdf-test.dir/build.make
sdf-test: CMakeFiles/sdf-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sdf-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdf-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sdf-test.dir/build: sdf-test
.PHONY : CMakeFiles/sdf-test.dir/build

CMakeFiles/sdf-test.dir/requires: CMakeFiles/sdf-test.dir/src/main.cpp.o.requires
CMakeFiles/sdf-test.dir/requires: CMakeFiles/sdf-test.dir/src/window.cpp.o.requires
CMakeFiles/sdf-test.dir/requires: CMakeFiles/sdf-test.dir/src/render.cpp.o.requires
CMakeFiles/sdf-test.dir/requires: CMakeFiles/sdf-test.dir/src/sdfshape.cpp.o.requires
.PHONY : CMakeFiles/sdf-test.dir/requires

CMakeFiles/sdf-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sdf-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sdf-test.dir/clean

CMakeFiles/sdf-test.dir/depend:
	cd /home/barry/Documents/Projects/sdf-test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/barry/Documents/Projects/sdf-test /home/barry/Documents/Projects/sdf-test /home/barry/Documents/Projects/sdf-test/build /home/barry/Documents/Projects/sdf-test/build /home/barry/Documents/Projects/sdf-test/build/CMakeFiles/sdf-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sdf-test.dir/depend
