cmake_minimum_required(VERSION 3.9.6)
project(OpenWorld)

set(CMAKE_CXX_STANDARD 14)

add_executable(OpenWorld main.cpp
        src/Shader.cpp src/Shader.h
        src/Application.h
        src/Model.h
        src/World.h
        src/Renderer.h
        src/Util.h
        learnopengl/shader_m.h
        learnopengl/camera.h
        learnopengl/filesystem.h
        learnopengl/model.h
        )
find_package(Threads REQUIRED)
find_package(glfw3 3.2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
#find_package(glad REQUIRED)
find_package(glm REQUIRED)

target_include_directories(OpenWorld PUBLIC
        ${OPENGL_INCLUDE_DIR}
        ${GLEW_INCLUDE_DIRS}
        ${GLUT_INCLUDE_DIRS}
        ${glm_INCLUDE_DIRS}
        "/home/olafurj/Dropbox/dev/OpenWorld/include")
target_link_libraries(OpenWorld
        glfw
        #SOIL

        ${OPENGL_gl_LIBRARY}
        ${GLEW_LIBRARIES}
        ${GLUT_LIBRARIES}
        ${glm_LIBRARIES})