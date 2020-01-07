cmake_minimum_required(VERSION 3.9.0)
project(OpenWorld)

set(CMAKE_CXX_STANDARD 17)

add_executable(OpenWorld main.cpp
        learnopengl/camera.h

        OpenEngine/Cubemap.cpp
        OpenEngine/Cubemap.h
        OpenEngine/Display.h
        OpenEngine/DisplayManager.h
        OpenEngine/RawModel.h
        OpenEngine/Loader.h
        OpenEngine/Renderer.h
        OpenEngine/Texture.cpp
        OpenEngine/Texture.h
        OpenEngine/TextureManager.h
        OpenEngine/Application.h

        includes/spdlog/spdlog/spdlog.h
        )
find_package(Threads REQUIRED)
find_package(glfw3 3.2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)

add_subdirectory(src/libs/)

target_include_directories(OpenWorld PUBLIC
        ${OPENGL_INCLUDE_DIR}
        ${GLEW_INCLUDE_DIRS}
        ${GLUT_INCLUDE_DIRS}
        includes/spdlog/

        src/libs/libconfig
        src/libs/SOIL
        src/libs/glad/glad
        src/libs/fmt
        src/libs/fmt/fmt/src
        src/libs/fmt/fmt/include/
        )

target_link_libraries(OpenWorld
        glfw
        glad
        libconfig
        stdc++fs
        SOIL
        fmt
        dl
        ${OPENGL_gl_LIBRARY}
        ${GLEW_LIBRARIES}
        ${GLUT_LIBRARIES}
        )