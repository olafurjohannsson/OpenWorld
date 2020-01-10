project("triangle-test")

ADD_DEFINITIONS( -std=c++17 )

# Add the current source directory to the include path so that the target in this file
# and targets in all subdirectories added after this point, will also have this include path.
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_SOURCE_DIR} )

# Find includes in corresponding build directories.
SET( CMAKE_INCLUDE_CURRENT_DIR ON )



ADD_EXECUTABLE( ${PROJECT_NAME} triangle-test.cpp ../../../includes/sb6code/include/sb6.h )

target_include_directories( ${PROJECT_NAME} PUBLIC ../../../includes/sb6code/ )




SET( POC_LIBS
        pthread
        dl
        GL

        )


TARGET_LINK_LIBRARIES( ${PROJECT_NAME} ${POC_LIBS} ) # CGAL gmp