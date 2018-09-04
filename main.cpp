//
// Created by olafurj on 01/09/18.
//

#include <glad/glad.h>
#include "OpenEngine/DisplayManager.h"
#include "OpenEngine/RawModel.h"
#include "OpenEngine/Loader.h"
#include "OpenEngine/Renderer.h"
#include "OpenEngine/Cubemap.h"
#include "OpenEngine/Texture.h"
#include "OpenEngine/TextureManager.h"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "learnopengl/shader.h"


#include "OpenEngine/Application.h"

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
#include <fmt/format.h>
#include "OpenEngine/Skybox.h"

int main() {

    Application::init();

    Display *display = DisplayManager::createDisplay( Application::title );

    Shader shader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/vertex.glsl",
                   "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/fragment.glsl" );
    Loader loader;
    Renderer renderer;
    Skybox skybox( loader );

    while ( !Display::isCloseRequested()) {

        processInput( display->getWindow());

        renderer.prepare(); // pre-render

        glm::mat4 view = glm::mat4( glm::mat3( camera.GetViewMatrix()));
        glm::mat4 projection = glm::perspective( glm::radians( camera.Zoom ), (float) 1280 / (float) 720, 0.1f,
                                                 100.0f );

        skybox.render( renderer, view, projection );

        DisplayManager::updateDisplay();

    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}