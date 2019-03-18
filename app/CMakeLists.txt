cmake_minimum_required(VERSION 3.10)

include(cmake/HunterGate.cmake)

HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.23.135.tar.gz"
    SHA1 "72eecdf1dea9fb6299d7fb61bbd00bd4ca170fa4"
)

project(cmake-project-template LANGUAGES C CXX)