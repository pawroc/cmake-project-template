cmake_minimum_required(VERSION 3.10.0)
project(application VERSION 1.0.0 LANGUAGES C CXX)

# INTERFACE property is used because Dummy is header only library
add_library(app_lib INTERFACE)
target_include_directories(app_lib
INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/inc>
    $<INSTALL_INTERFACE:inc>
)
add_library(app::app_lib ALIAS app_lib)

add_executable(app main.cpp)

target_link_libraries(app app::app_lib)

# target_compile_features(app INTERFACE )