cmake_minimum_required(VERSION 3.27)
project(polynomial)

set(CMAKE_CXX_STANDARD 23)

add_executable(polynomial main.cpp
        src/polynomial/polynomial.cpp
        src/node/node.cpp
        src/base/base.cpp
        src/polynomial/polynomial.h
        src/node/node.h
)
