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
include CMakeFiles/ip_clt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ip_clt.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ip_clt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ip_clt.dir/flags.make

CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o: CMakeFiles/ip_clt.dir/flags.make
CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o: ../src/ip_clt.cpp
CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o: CMakeFiles/ip_clt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/npl/code/NPL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o -MF CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o.d -o CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o -c /home/npl/code/NPL/src/ip_clt.cpp

CMakeFiles/ip_clt.dir/src/ip_clt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ip_clt.dir/src/ip_clt.cpp.i"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/npl/code/NPL/src/ip_clt.cpp > CMakeFiles/ip_clt.dir/src/ip_clt.cpp.i

CMakeFiles/ip_clt.dir/src/ip_clt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ip_clt.dir/src/ip_clt.cpp.s"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/npl/code/NPL/src/ip_clt.cpp -o CMakeFiles/ip_clt.dir/src/ip_clt.cpp.s

# Object files for target ip_clt
ip_clt_OBJECTS = \
"CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o"

# External object files for target ip_clt
ip_clt_EXTERNAL_OBJECTS =

ip_clt: CMakeFiles/ip_clt.dir/src/ip_clt.cpp.o
ip_clt: CMakeFiles/ip_clt.dir/build.make
ip_clt: CMakeFiles/ip_clt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/npl/code/NPL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ip_clt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ip_clt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ip_clt.dir/build: ip_clt
.PHONY : CMakeFiles/ip_clt.dir/build

CMakeFiles/ip_clt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ip_clt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ip_clt.dir/clean

CMakeFiles/ip_clt.dir/depend:
	cd /home/npl/code/NPL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/npl/code/NPL /home/npl/code/NPL /home/npl/code/NPL/build /home/npl/code/NPL/build /home/npl/code/NPL/build/CMakeFiles/ip_clt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ip_clt.dir/depend

