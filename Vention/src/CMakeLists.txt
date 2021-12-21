aux_source_directory (Car SRC_LIST)
aux_source_directory (Observer SRC_LIST1)
aux_source_directory (Thread SRC_LIST1)
include_directories (../include)
include_directories (../build/devel/include)
find_package(Threads)
find_package(catkin REQUIRED COMPONENTS	
   geometry_msgs	
   message_generation	
   rosconsole	
   roscpp	
   roscpp_serialization	
   roslib	
   rostime	
   std_msgs	
   std_srvs)
find_package(Curses REQUIRED)

#add_message_files(
#   FILES
#   tong.msg
#   he.msg

# )
add_subdirectory (serv_msgs)
include_directories(${CURSES_INCLUDE_DIR})
include_directories(include ${catkin_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS}) 
link_directories(${catkin_LIBRARY_DIRS}) 
add_executable (main ${SRC_LIST} ${SRC_LIST1})
target_link_libraries(main ${CMAKE_THREAD_LIBS_INIT} ${CURSES_LIBRARIES} ${catkin_LIBRARIES})
set(CMAKE_BUILD_TYPE DEBUG)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14" )
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

