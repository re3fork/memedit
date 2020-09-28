cmake_minimum_required(VERSION 2.8.12)
project(dearmemedit)

include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
conan_basic_setup()

add_executable(dearmemedit
    main.cpp
    bindings/imgui_impl_glfw.cpp
    bindings/imgui_impl_opengl2.cpp
    bindings/imgui_impl_glfw.h
    bindings/imgui_impl_opengl2.h
)

conan_target_link_libraries(dearmemedit)
