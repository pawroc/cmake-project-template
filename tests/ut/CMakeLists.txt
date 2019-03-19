cmake_minimum_required(VERSION 3.10.0)
project(app_ut VERSION 1.0.0 LANGUAGES CXX C)

hunter_add_package(GTest)
find_package(GTest CONFIG REQUIRED)
find_package(GMock CONFIG REQUIRED)

set(SOURCES TestDummy.cpp)

# Do not append STATIC / SHARED specifier unless you really know what you do
# Use -DBUILD_SHARED_LIBS=ON/OFF instead of this ugly way
add_executable(ut_app ${SOURCES})
target_include_directories(ut_app PUBLIC ${GTEST_INCLUDE_DIR})

# GMock::gmock and GTest::main will be linked automatically
target_link_libraries(ut_app GMock::main app::app_lib)

add_test(NAME DummyTest
         COMMAND ut_app
)