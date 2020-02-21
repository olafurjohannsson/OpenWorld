

#include <GL/glew.h>
#include <cassert>
#include <GLFW/glfw3.h>


class BaseApplication
{
public:
    BaseApplication() = default;

    virtual ~BaseApplication() = default;

    virtual void run( BaseApplication *runningApp )
    {
        bool running = true;
        application = runningApp;

        if( !glfwInit() )
        {

        }

        init();

        glfwWindowHint( GLFW_VERSION_MAJOR, m_appInfo.majorVersion );
        glfwWindowHint( GLFW_VERSION_MINOR, m_appInfo.minorVersion );

#ifdef _DEBUG
        glfwWindowHint( GLFW_OPENGL_DEBUG_CONTEXT, GL_TRUE );
#endif
        glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
        glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );
        glfwWindowHint( GLFW_SAMPLES, m_appInfo.samples );
        glfwWindowHint( GLFW_STEREO, m_appInfo.flags.stereo ? GL_TRUE : GL_FALSE );
    }

    virtual void init()
    {

    }

    virtual void startup()
    {

    }

    virtual void render( double currentTime )
    {

    }

    virtual void shutdown()
    {

    }

    virtual void onResize( int w, int h )
    {
        m_appInfo.windowWidth = w;
        m_appInfo.windowHeight = h;
    }

    virtual void onKey( int key, int action )
    {

    }

    virtual void onMouseButton( int button, int action )
    {

    }

    virtual void onMouseMove( int x, int y )
    {

    }

    virtual void onMouseWheel( int pos )
    {

    }

public:
    struct AppInfo
    {
        int8_t title[ 128 ];
        int32_t windowWidth;
        int32_t windowHeight;
        int32_t majorVersion;
        int32_t minorVersion;
        int32_t samples;
        union
        {
            struct
            {
                uint32_t fullscreen : 1;
                uint32_t vsync : 1;
                uint32_t cursor : 1;
                uint32_t stereo : 1;
                uint32_t debug : 1;
            };
            uint32_t all;
        } flags;
    };

protected:

    AppInfo m_appInfo;
    static BaseApplication *application;

};


int main()
{
    glfwInit();
    return 0;
}
