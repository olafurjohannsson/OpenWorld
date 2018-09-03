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
#include "learnopengl/shader.h"

using namespace ow::graphics;

int main() {

    Display *display = DisplayManager::createDisplay( "test" );

    Shader shader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/vertex.glsl",
                   "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/fragment.glsl" );
    Loader loader;
    Renderer renderer;
    std::vector<float> vertices = {
            // Left bottom triangle
            -0.5f, 0.5f, 0.0f, -0.5f, -0.5f, 0.0f, 0.5f, -0.5f, 0.0f,
            // Right top triangle
            0.5f, -0.5f, 0.0f, 0.5f, 0.5f, 0.0f, -0.5f, 0.5f, 0.0f };
    RawModel model = loader.loadToVAO( vertices );
    std::cout << model;

    Shader skyboxShader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.vertex.glsl",
                         "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.fragment.glsl" );
//    skyboxShader.use();
    skyboxShader.setInt( "skybox", 0 );

    unsigned int cubemapId = TextureManager::loadCubemap();
    RawModel skyboxModel = loader.loadToVAO( skyboxVertices );

    while ( !Display::isCloseRequested()) {

        renderer.prepare(); // pre-render

        shader.use();
        renderer.render( model );

        glDepthFunc( GL_LEQUAL );
        skyboxShader.use();

        glm::mat4 view = glm::mat4( glm::mat3( camera.GetViewMatrix()));
        glm::mat4 projection = glm::perspective(glm::radians(camera.Zoom), (float)1280 / (float)720, 0.1f, 100.0f);
        skyboxShader.setMat4( "view", view );
        skyboxShader.setMat4( "projection", projection );
        renderer.render( skyboxModel );
        glDepthFunc( GL_LESS );

        DisplayManager::updateDisplay();

    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}