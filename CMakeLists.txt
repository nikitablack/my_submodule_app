cmake_minimum_required(VERSION 3.18 FATAL_ERROR)

project(submodule_app LANGUAGES CXX)

add_subdirectory(submodules/my_submodule_lib)
add_subdirectory(submodules/my_submodule_lib_2)

add_executable(submodule_app
    src/main.cpp
)

set_target_properties(submodule_app PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
)

target_link_libraries(submodule_app PUBLIC submodule_lib)
target_link_libraries(submodule_app PUBLIC submodule_lib_2)
