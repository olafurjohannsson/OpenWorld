PROJECT( "triangle-test" )

ADD_DEFINITIONS( -std=c++17 )



ADD_EXECUTABLE( ${PROJECT_NAME} main.cpp )

SET( POC_LIBS
        pthread
        dl
        GL
        )


TARGET_LINK_LIBRARIES( ${PROJECT_NAME} ${POC_LIBS} ) # CGAL gmp
