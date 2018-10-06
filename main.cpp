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

#include <glm/gtc/type_ptr.hpp>


using namespace ow::graphics;

void processInput( GLFWwindow *window ) {
    if ( glfwGetKey( window, GLFW_KEY_ESCAPE ) == GLFW_PRESS ) {
        glfwSetWindowShouldClose( window, true );
    }

    if ( glfwGetKey( window, GLFW_KEY_W ) == GLFW_PRESS ) {
        camera.ProcessKeyboard( FORWARD, deltaTime );
    }

    if ( glfwGetKey( window, GLFW_KEY_S ) == GLFW_PRESS ) {
        camera.ProcessKeyboard( BACKWARD, deltaTime );
    }

    if ( glfwGetKey( window, GLFW_KEY_A ) == GLFW_PRESS ) {
        camera.ProcessKeyboard( LEFT, deltaTime );
    }

    if ( glfwGetKey( window, GLFW_KEY_D ) == GLFW_PRESS ) {
        camera.ProcessKeyboard( RIGHT, deltaTime );
    }
}


int main() {

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
    const char *vertexBasicPath = Application::getConfigValue<const char *>( "basicVertexPath", nullptr );
    const char *fragmentBasicPath = Application::getConfigValue<const char *>( "basicFragmentPath", nullptr );
    Application::console->info( "\n\t\tVertex fetched, path: {}\n\t\tFragment fetched, path: {}", vertexBasicPath,
                                fragmentBasicPath );


    /**
     * Create classes to manipulate 3D objects
     */
    Shader shader( vertexBasicPath, fragmentBasicPath );
    Loader loader;
    Renderer renderer;

    RawModel model = loader.loadToVAO( shader, std::vector<float> {
            -0.25f, -0.25f, 0.0f, // left
            0.25f, -0.25f, 0.0f, // right
            0.0f, 0.25f, 0.0f  // top
    } );

    bool secondPassed;
    float x = 0.01f;
    float y = 0.01f;
    // Let's run it until user wants to close
    while ( !Display::isCloseRequested()) {

        // Keyboard input
        processInput( Display::getWindow());

        // Pre-render
        renderer.prepare();

        // configure transformation matrices
        //glm::mat4 projection = glm::perspective(glm::)
        shader.use();

        // render model
        renderer.render( model );

        // Update display, get frame info, fps, swap buffers and poll events.
        DisplayManager::updateDisplay( secondPassed );

        if ( secondPassed ) {
            loader.updatePosition( model, shader, std::vector<float> {
                    -0.25f + x, -0.25f + y, 0.0f, // left
                    0.25f, -0.25f, 0.0f, // right
                    0.0f, 0.25f, 0.0f  // top
            } );
            x += 0.05;
            y -= 0.05;
        }

        glfwSwapBuffers( Display::getWindow());
        glfwPollEvents();
    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}