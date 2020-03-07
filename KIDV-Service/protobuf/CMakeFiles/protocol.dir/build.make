# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /root/proj/GeoffreyCode/KIDV-Service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/proj/GeoffreyCode/KIDV-Service

# Include any dependencies generated for this target.
include protobuf/CMakeFiles/protocol.dir/depend.make

# Include the progress variables for this target.
include protobuf/CMakeFiles/protocol.dir/progress.make

# Include the compile flags for this target's objects.
include protobuf/CMakeFiles/protocol.dir/flags.make

protobuf/protocol.pb.cc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/proj/GeoffreyCode/KIDV-Service/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating protocol.pb.cc;protocol.pb.h from protocol.proto"
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && /root/.hunter/_Base/0897935/9b2c9d4/4781db6/Install/bin/protoc-3.10.0.0 --cpp_out /root/proj/GeoffreyCode/KIDV-Service/protobuf -I /root/proj/GeoffreyCode/KIDV-Service/protobuf /root/proj/GeoffreyCode/KIDV-Service/protobuf/protocol.proto

protobuf/protocol.pb.h: protobuf/protocol.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate protobuf/protocol.pb.h

protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.o: protobuf/CMakeFiles/protocol.dir/flags.make
protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.o: protobuf/protocol.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/proj/GeoffreyCode/KIDV-Service/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.o"
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protocol.dir/protocol.pb.cc.o -c /root/proj/GeoffreyCode/KIDV-Service/protobuf/protocol.pb.cc

protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protocol.dir/protocol.pb.cc.i"
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/proj/GeoffreyCode/KIDV-Service/protobuf/protocol.pb.cc > CMakeFiles/protocol.dir/protocol.pb.cc.i

protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protocol.dir/protocol.pb.cc.s"
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/proj/GeoffreyCode/KIDV-Service/protobuf/protocol.pb.cc -o CMakeFiles/protocol.dir/protocol.pb.cc.s

# Object files for target protocol
protocol_OBJECTS = \
"CMakeFiles/protocol.dir/protocol.pb.cc.o"

# External object files for target protocol
protocol_EXTERNAL_OBJECTS =

lib/libprotocol.a: protobuf/CMakeFiles/protocol.dir/protocol.pb.cc.o
lib/libprotocol.a: protobuf/CMakeFiles/protocol.dir/build.make
lib/libprotocol.a: protobuf/CMakeFiles/protocol.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/proj/GeoffreyCode/KIDV-Service/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../lib/libprotocol.a"
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && $(CMAKE_COMMAND) -P CMakeFiles/protocol.dir/cmake_clean_target.cmake
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protocol.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
protobuf/CMakeFiles/protocol.dir/build: lib/libprotocol.a

.PHONY : protobuf/CMakeFiles/protocol.dir/build

protobuf/CMakeFiles/protocol.dir/clean:
	cd /root/proj/GeoffreyCode/KIDV-Service/protobuf && $(CMAKE_COMMAND) -P CMakeFiles/protocol.dir/cmake_clean.cmake
.PHONY : protobuf/CMakeFiles/protocol.dir/clean

protobuf/CMakeFiles/protocol.dir/depend: protobuf/protocol.pb.cc
protobuf/CMakeFiles/protocol.dir/depend: protobuf/protocol.pb.h
	cd /root/proj/GeoffreyCode/KIDV-Service && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/proj/GeoffreyCode/KIDV-Service /root/proj/GeoffreyCode/KIDV-Service/protobuf /root/proj/GeoffreyCode/KIDV-Service /root/proj/GeoffreyCode/KIDV-Service/protobuf /root/proj/GeoffreyCode/KIDV-Service/protobuf/CMakeFiles/protocol.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : protobuf/CMakeFiles/protocol.dir/depend

