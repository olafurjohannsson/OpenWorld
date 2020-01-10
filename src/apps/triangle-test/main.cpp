

//#include <GL/glew.h>
//#include <cassert>
//#include <GLFW/glfw3.h>

#include <sb6.h>

class a : public sb6::application
{
public:
    void render( double ct )
    {
        static const GLfloat red[] = { 1.0f, 0.0f, 0.0f, 1.0f };
        glClearBufferfv( GL_COLOR, 0, red );
    }
};

DECLARE_MAIN( a );