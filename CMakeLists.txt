cmake_minimum_required(VERSION 3.9.0)
project(OpenWorld)

set(CMAKE_CXX_STANDARD 14)

add_executable(OpenWorld main.cpp



#        learnopengl/shader_m.h
        learnopengl/camera.h
#        learnopengl/filesystem.h
#        learnopengl/model.h

        includes/glad/include/glad/glad.c
        includes/stb_image/stb_image.cpp
        includes/SOIL/SOIL.c
        includes/spdlog/spdlog/spdlog.h
        includes/fmt/include/fmt/format.h


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
        )
find_package(Threads REQUIRED)
find_package(glfw3 3.2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glm REQUIRED)

target_include_directories(OpenWorld PUBLIC
        ${OPENGL_INCLUDE_DIR}
        ${GLEW_INCLUDE_DIRS}
        ${GLUT_INCLUDE_DIRS}
        ${glm_INCLUDE_DIRS}
        includes/spdlog
        includes/fmt/include
        includes/stb_image
        includes/SOIL
        includes/glad/include)

target_link_libraries(OpenWorld
        glfw
        SOIL
        dl
        ${OPENGL_gl_LIBRARY}
        ${GLEW_LIBRARIES}
        ${GLUT_LIBRARIES}
        ${glm_LIBRARIES})