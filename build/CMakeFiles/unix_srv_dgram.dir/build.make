# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/npl/code/NPL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/npl/code/NPL/build

# Include any dependencies generated for this target.
include CMakeFiles/unix_srv_dgram.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/unix_srv_dgram.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/unix_srv_dgram.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unix_srv_dgram.dir/flags.make

CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o: CMakeFiles/unix_srv_dgram.dir/flags.make
CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o: ../src/unix_srv_dgram.cpp
CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o: CMakeFiles/unix_srv_dgram.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npl/code/NPL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o -MF CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o.d -o CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o -c /home/npl/code/NPL/src/unix_srv_dgram.cpp

CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.i"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npl/code/NPL/src/unix_srv_dgram.cpp > CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.i

CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.s"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npl/code/NPL/src/unix_srv_dgram.cpp -o CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.s

# Object files for target unix_srv_dgram
unix_srv_dgram_OBJECTS = \
"CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o"

# External object files for target unix_srv_dgram
unix_srv_dgram_EXTERNAL_OBJECTS =

unix_srv_dgram: CMakeFiles/unix_srv_dgram.dir/src/unix_srv_dgram.cpp.o
unix_srv_dgram: CMakeFiles/unix_srv_dgram.dir/build.make
unix_srv_dgram: CMakeFiles/unix_srv_dgram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/npl/code/NPL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unix_srv_dgram"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unix_srv_dgram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unix_srv_dgram.dir/build: unix_srv_dgram
.PHONY : CMakeFiles/unix_srv_dgram.dir/build

CMakeFiles/unix_srv_dgram.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unix_srv_dgram.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unix_srv_dgram.dir/clean

CMakeFiles/unix_srv_dgram.dir/depend:
	cd /home/npl/code/NPL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/npl/code/NPL /home/npl/code/NPL /home/npl/code/NPL/build /home/npl/code/NPL/build /home/npl/code/NPL/build/CMakeFiles/unix_srv_dgram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unix_srv_dgram.dir/depend
