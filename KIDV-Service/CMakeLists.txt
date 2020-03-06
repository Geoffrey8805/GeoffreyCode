cmake_minimum_required(VERSION 2.8)

include("cmake/HunterGate.cmake")

# 1. Try to detect hunter by:
#   * cmake variable
#   * environment variable
#   * in HOME (`.hunter` directory)
#   * in SYSTEMDRIVE (`.hunter` directory, windows only)
#   * in USERPROFILE (`.hunter` directory, windows only)
# 2. if failed, download it
# 3. set HUNTER_GATE_* variables
# 4. include master file: 'include(${HUNTER_SELF}/cmake/Hunter)
HunterGate(
    URL "https://github.com/cpp-pm/hunter/archive/v0.23.241.tar.gz"
    SHA1 "0897935585580d4eece64804f4f48fe9199a7a2c"
    FILEPATH "${CMAKE_CURRENT_LIST_DIR}/cmake/config.cmake"
)

project(KIDV-Service)

# # yaml
# hunter_add_package(yaml-cpp)
# find_package(yaml-cpp CONFIG REQUIRED)

# # google libs
# hunter_add_package(glog)
# find_package(glog CONFIG REQUIRED)
# hunter_add_package(gflags)
# find_package(gflags CONFIG REQUIRED)

# # json
# hunter_add_package(nlohmann_json)
# find_package(nlohmann_json CONFIG REQUIRED)

# protobuf
option(protobuf_MODULE_COMPATIBLE "use protobuf in module compatible mode" OFF)
hunter_add_package(Protobuf)
find_package(Protobuf CONFIG REQUIRED)

# # libcurl
# hunter_add_package(CURL)
# find_package(CURL CONFIG REQUIRED)

# # openssl
# hunter_add_package(OpenSSL)
# find_package(OpenSSL REQUIRED)

# boost
# set(Boost_USE_STATIC_LIBS ON)
# set(Boost_USE_MULTITHREADED ON)
# set(Boost_USE_STATIC_RUNTIME OFF)
# find_package(Boost COMPONENTS system thread filesystem atomic program_options regex signals)
# if(Boost_FOUND)
#     message(STATUS "boost library found")
# else()
#     message(FATAL_ERROR "boost library is needed but cant be found")
# endif()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC -fpermissive")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fPIC -fpermissive")

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/include
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/protocol
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/utils
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/mqtt
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/virt
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/state
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/net
#                     ${CMAKE_CURRENT_SOURCE_DIR}/src/command) # 头文件包含目录
# link_directories(${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/lib)


# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SOURCE_FILES) # 添加源代码文件夹, 自动扫描所有文件
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/utils UTILS_FILES) # 添加源代码文件夹, 自动扫描所有文件
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/mqtt MQTT_FILES) # 添加源代码文件夹, 自动扫描所有文件
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/virt VIRT_FILES) # 添加源代码文件夹, 自动扫描所有文件
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/state STATE_FILES)
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/net NET_FILES)
# aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/command CMD_FILES)


aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SOURCE_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/controlCenter CONTROLCENTER_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/dataCenter DATACENTER_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/interactionCenter INTERACTION_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/mqtt MQTT_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/tcpServer TCPSERVER_FILES) 
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/userManager USERMANAGER_FILES)  
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src/util UTIL_FILES)  

add_subdirectory(protobuf)







set(PROJECT_LIBS pthread 
#${Boost_LIBRARIES} 
                #caf_core_static
                 # hunter libs
                #  glog::glog
                #  gflags
                #  yaml-cpp::yaml-cpp
                 protocol
                #  nlohmann_json::nlohmann_json
                #  CURL::libcurl
                #  OpenSSL::SSL OpenSSL::Crypto
                 # build libs
                #  paho-mqtt3a
                #  virt
                )

 add_executable(KIDV-Service
    ${SOURCE_FILES}
    ${CONTROLCENTER_FILES}
    ${DATACENTER_FILES}
    ${INTERACTION_FILES}
    ${MQTT_FILES}
    ${TCPSERVER_FILES}
    ${USERMANAGER_FILES}
    ${UTIL_FILES}
    )

 target_link_libraries (KIDV-Service ${PROJECT_LIBS})

# file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/config DESTINATION ${EXECUTABLE_OUTPUT_PATH})
# file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/lib/ DESTINATION ${LIBRARY_OUTPUT_PATH})