//
// Created by olafurj on 01/09/18.
//

#include "OpenEngine/DisplayManager.h"
#include "OpenEngine/Loader.h"
#include "OpenEngine/Renderer.h"
#include "OpenEngine/Cubemap.h"
#include "OpenEngine/Texture.h"
#include "OpenEngine/TextureManager.h"
#include "OpenEngine/Skybox.h"
#include <chrono>
#include <glm/gtc/type_ptr.hpp>


using namespace ow::graphics;

void processInput( GLFWwindow *window )
{
    if( glfwGetKey( window, GLFW_KEY_ESCAPE ) == GLFW_PRESS )
    {
        glfwSetWindowShouldClose( window, true );
    }

    if( glfwGetKey( window, GLFW_KEY_W ) == GLFW_PRESS )
    {
        camera.ProcessKeyboard( FORWARD, deltaTime );
    }

    if( glfwGetKey( window, GLFW_KEY_S ) == GLFW_PRESS )
    {
        camera.ProcessKeyboard( BACKWARD, deltaTime );
    }

    if( glfwGetKey( window, GLFW_KEY_A ) == GLFW_PRESS )
    {
        camera.ProcessKeyboard( LEFT, deltaTime );
    }

    if( glfwGetKey( window, GLFW_KEY_D ) == GLFW_PRESS )
    {
        camera.ProcessKeyboard( RIGHT, deltaTime );
    }
}


int main()
{

    /**
     * Initialize app, no OpenGL/D3D setup is done here, only loggers, config and initialization of app
     */
    Application::init();

    /**
     * Create a display to render objects on
     */
    DisplayManager::createDisplay( Application::title );

    /**
     * Create shader
     */
    Application::console->info( "Fetching vertex and fragment config values" );
    const char *vertexBasicPath = Application::getConfigValue< const char * >( "basicVertexPath", nullptr );
    const char *fragmentBasicPath = Application::getConfigValue< const char * >( "basicFragmentPath", nullptr );
    Application::console->info( "\n\t\tVertex fetched, path: {}\n\t\tFragment fetched, path: {}", vertexBasicPath,
                                fragmentBasicPath );


    /**
     * Create classes to manipulate 3D objects
     */
    Shader shader( vertexBasicPath, fragmentBasicPath );
    Loader loader;
    Renderer renderer;

    GLint vertexSize = 3;
    GLint textureCoordinatesSize = 2;
    const char *attr = "aPos";
    RawModel model = loader.commit( shader, std::vector< float > {
        // positions          // texture coords
        0.5f,  0.5f, 0.0f,   1.0f, 1.0f,       // top right
        0.5f, -0.5f, 0.0f,   1.0f, 0.0f,       // bottom right
        -0.5f, -0.5f, 0.0f,  0.0f, 0.0f,       // bottom left
        -0.5f,  0.5f, 0.0f,  0.0f, 1.0f        // top left
    }, attr, vertexSize, textureCoordinatesSize );

//    GLuint vaoId2 = loader.commit( shader, std::vector<float> {
//            -1.0f, 0.9f, 0.0f, // left
//            -0.9f, 0.9f, 0.0f, // right
//            -0.5f, 1.0f, 0.0f  // top
//    }, attr, vertexSize, textureCoordinatesSize );

    bool secondPassed;
    float x = 0.0f;
    float y = 0.0f;


    // Let's run it until user wants to close
    while( !Display::isCloseRequested() )
    {
        // Keyboard input
        processInput( Display::getWindow() );

        // Pre-render
        renderer.prepare();

//        if ( glfwGetKey( Display::getWindow(), GLFW_KEY_UP ) == GLFW_PRESS ) {
//            y += 0.01f;
//        }
//        if ( glfwGetKey( Display::getWindow(), GLFW_KEY_RIGHT ) == GLFW_PRESS ) {
//            x += 0.01f;
//        }
//        if ( glfwGetKey( Display::getWindow(), GLFW_KEY_DOWN ) == GLFW_PRESS ) {
//            y -= 0.01f;
//        }
//        if ( glfwGetKey( Display::getWindow(), GLFW_KEY_LEFT ) == GLFW_PRESS ) {
//            x -= 0.01f;
//        }


        // render model
        shader.use();

//        loader.transform( shader, glm::vec3( x, y, 0.0f ));
//        glBindVertexArray( model.getVaoId() );
//        glDrawArrays( GL_TRIANGLES, 0, model.getVertexCount() );
//        glBindVertexArray( 0 );

//        loader.transform( shader, glm::vec3( x, y, 0.0f ));
//        glBindVertexArray( vaoId2 );
//        glDrawArrays( GL_TRIANGLES, 0, 3 );
//        glBindVertexArray( 0 );

        // Update display, get frame info, fps, swap buffers and poll events.
        DisplayManager::updateDisplay( secondPassed );
//        if ( secondPassed ) {
//            const char *out = "Vao %d - Vao %d\n";
////            printf( out, model.getVaoId(), model2.getVaoId());
//        }
        glfwSwapBuffers( Display::getWindow() );
        glfwPollEvents();
    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}