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

using namespace ow::graphics;

void processInput( GLFWwindow *window ) {
    if ( glfwGetKey( window, GLFW_KEY_ESCAPE ) == GLFW_PRESS )
        glfwSetWindowShouldClose( window, true );

    if ( glfwGetKey( window, GLFW_KEY_W ) == GLFW_PRESS )
        camera.ProcessKeyboard( FORWARD, deltaTime );
    if ( glfwGetKey( window, GLFW_KEY_S ) == GLFW_PRESS )
        camera.ProcessKeyboard( BACKWARD, deltaTime );
    if ( glfwGetKey( window, GLFW_KEY_A ) == GLFW_PRESS )
        camera.ProcessKeyboard( LEFT, deltaTime );
    if ( glfwGetKey( window, GLFW_KEY_D ) == GLFW_PRESS )
        camera.ProcessKeyboard( RIGHT, deltaTime );
}

int main() {


    exit( 0 );

    Display *display = DisplayManager::createDisplay( "test" );

    Shader shader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/vertex.glsl",
                   "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/fragment.glsl" );
    Loader loader;
    Renderer renderer;

    Shader skyboxShader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.vertex.glsl",
                         "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.fragment.glsl" );
    skyboxShader.use();
    skyboxShader.setInt( "skybox", 0 );

    unsigned int cubemapId = TextureManager::loadCubemap();
    RawModel skyboxModel = loader.loadToVAO( skyboxVertices );

    while ( !Display::isCloseRequested()) {

        processInput( display->getWindow());

        renderer.prepare(); // pre-render

        glDepthFunc( GL_LEQUAL );
        skyboxShader.use();

        glm::mat4 view = glm::mat4( glm::mat3( camera.GetViewMatrix()));
        glm::mat4 projection = glm::perspective( glm::radians( camera.Zoom ), (float) 1280 / (float) 720, 0.1f,
                                                 100.0f );
        skyboxShader.setMat4( "view", view );
        skyboxShader.setMat4( "projection", projection );
        renderer.render( skyboxModel );
        glDepthFunc( GL_LESS );

        DisplayManager::updateDisplay();

    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}