//
// Created by olafurj on 01/09/18.
//

#include <glad/glad.h>
#include "OpenEngine/DisplayManager.h"
#include "OpenEngine/Loader.h"
#include "OpenEngine/Renderer.h"
#include "OpenEngine/Cubemap.h"
#include "OpenEngine/Texture.h"
#include "OpenEngine/TextureManager.h"
#include "OpenEngine/Skybox.h"
#include "OpenEngine/Application.h"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "learnopengl/shader.h"


class Cube {

public:
    Cube() {
        GLushort cube_elements[] = {
                // front
                0, 1, 2, 2, 3, 0,
                // right
                1, 5, 6, 6, 2, 1,
                // back
                7, 6, 5, 5, 4, 7,
                // left
                4, 0, 3, 3, 7, 4,
                // bottom
                4, 5, 1, 1, 0, 4,
                // top
                3, 2, 6, 6, 7, 3, };
        GLfloat cube_vertices[] = {
                // front
                -1.0, -1.0, 1.0, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, -1.0, 1.0, 1.0,
                // back
                -1.0, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0, -1.0, };
        GLfloat cube_colors[] = {
                // front colors
                1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0,
                // back colors
                1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, };
        glGenBuffers( 1, &ibo_cube_elements );
        glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, ibo_cube_elements );
        glBufferData( GL_ELEMENT_ARRAY_BUFFER, sizeof( cube_elements ), cube_elements, GL_STATIC_DRAW );
        glGetBufferParameteriv( GL_ELEMENT_ARRAY_BUFFER, GL_BUFFER_SIZE, &size );
    }

    void render() {
        glDrawElements( GL_TRIANGLES, size / sizeof( GLushort ), GL_UNSIGNED_SHORT, 0 );
    }
private:


    // buffer handles
    GLuint vbo_cube_vertices, vbo_cube_colors;
    GLuint ibo_cube_elements;

    int size;
};

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

    Application::init();

    Display *display = DisplayManager::createDisplay( Application::title );

    Shader shader( "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/vertex.glsl",
                   "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/fragment.glsl" );
    Loader loader;
    Renderer renderer;
    Skybox skybox( loader );

    std::vector<std::pair<int, int>> chunks;

    Texture texture;
    unsigned int txtId = texture.loadTexture2(
            "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/bricks2.jpg" );

    std::vector<float> coords = { 0.0f, 0.0f,  // lower-left corner
                                  1.0f, 0.0f,  // lower-right corner
                                  0.5f, 1.0f   // top-center corner
    };
    RawModel rawModel = loader.loadToVAO( coords );
    Application::console->info( rawModel.getVaoId());
    Cube cube;
    while ( !Display::isCloseRequested()) {

        processInput( display->getWindow());

        renderer.prepare(); // pre-render

        // get 4x4 matrix for camera
        glm::mat4 view = camera.GetViewMatrix(); //();
        glm::mat4 projection = camera.GetProjectionMatrix( 1280, 720 );


        shader.use();
        renderer.render( rawModel );
//        glEnable( GL_DEPTH_TEST );
        cube.render();

        skybox.render( renderer, view, projection );

        DisplayManager::updateDisplay();

    }

    loader.cleanUp();
    DisplayManager::closeDisplay();
}