cmake_minimum_required(VERSION 3.10)
project(OpenWorld)

set(CMAKE_CXX_STANDARD 14)

add_executable(OpenWorld main.cpp src/Shader.cpp src/Shader.h src/Application.h src/Model.h src/World.h src/Renderer.h src/Util.h)
find_package(Threads REQUIRED)
find_package(glfw3 3.2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glm REQUIRED)
target_include_directories(OpenWorld PUBLIC ${OPENGL_INCLUDE_DIR} ${GLEW_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${glm_INCLUDE_DIRS})
target_link_libraries(OpenWorld
        glfw
        SOIL
        ${OPENGL_gl_LIBRARY}
        ${GLEW_LIBRARIES}
        ${GLUT_LIBRARIES}
        ${glm_LIBRARIES})