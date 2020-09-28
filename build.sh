rm -Rf build
mkdir build
cd build
~/.local/bin/conan install .. -s build_type=Release
~/.local/bin/conan install .. -s build_type=Debug
~/.local/bin/conan install .. -s build_type=Release --build glew --build glfw --build imgui
~/.local/bin/conan install .. -s build_type=Debug --build glew --build glfw --build imgui
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
./dear-imgui-conan
