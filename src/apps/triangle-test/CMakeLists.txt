PROJECT( "triangle-test" )

ADD_DEFINITIONS( -std=c++17 )
set(CMAKE_CXX_STANDARD 17)
find_package(Threads REQUIRED)
find_package(OpenGL REQUIRED)

ADD_EXECUTABLE( ${PROJECT_NAME} main.cpp )

target_include_directories(${PROJECT_NAME} PUBLIC
        ${OPENGL_INCLUDE_DIR}
        ${GLEW_INCLUDE_DIRS}
        ${GLUT_INCLUDE_DIRS}
        )

#include_directories(../../../includes/sb6code/include)
#include_directories(../../../includes/sb6code/extern/glfw-2.7.6/include)
#include_directories(../../../includes/sb6code/extern/glfw-2.7.6/lib/x11/)
#
#link_libraries(../../../includes/sb6code/extern/glfw-2.7.6/lib/x11/)
#link_libraries(../../../includes/sb6code/lib/)
#link_libraries(../../../includes/sb6code/extern/glfw-2.7.6/lib)


SET( POC_LIBS
        pthread
        dl
        glfw
        glad
        GL
        ${OPENGL_gl_LIBRARY}
        ${GLEW_LIBRARIES}
        ${GLUT_LIBRARIES}
        )


TARGET_LINK_LIBRARIES( ${PROJECT_NAME} ${POC_LIBS} ) # CGAL gmp
