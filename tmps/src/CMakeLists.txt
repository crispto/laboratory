set(PROJECT_NAME labor)
PROJECT (${PROJECT_NAME})
include_directories(${CMAKE_SOURCE_DIR}/src/include)

set(CMAKE_CXX_STANDARD 11)

file(GLOB SRC *.cpp)
message("src is " ${SRC})
add_library(${PROJECT_NAME} SHARED ${SRC})
# add_library(${PROJECT_NAME}_static STATIC ${SRC})

message("install dir ${CMAKE_INSTALL_PREFIX}")
# install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_static DESTINATION lib)
install(TARGETS ${PROJECT_NAME}  DESTINATION lib)
install(DIRECTORY "include" DESTINATION ".")