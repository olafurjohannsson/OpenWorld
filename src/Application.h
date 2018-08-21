//
// Created by olafurj on 16/08/18.
//

#ifndef OPENWORLD_APPLICATION_H
#define OPENWORLD_APPLICATION_H

#include <iostream>
#include <utility>
#include <vector>
#include <string>
#include <chrono>
#include <ctime>
#include <functional>
#include <memory>
#include <iostream>
#include <vector>
#include <memory>
#include <cstdio>
#include <fstream>
#include <cassert>
#include <functional>
#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include "Model.h"
#include "Shader.h"

void key_callback( GLFWwindow *window, int key, int scancode, int action, int mode ) {
    // When a user presses the escape key, we set the WindowShouldClose property to true, closing the application
    if ( key == GLFW_KEY_ESCAPE && action == GLFW_PRESS )
        glfwSetWindowShouldClose( window, GL_TRUE );
    if ( key >= 0 && key < 1024 ) {
        if ( action == GLFW_PRESS );//Breakout.Keys[ key ] = GL_TRUE;
        else if ( action == GLFW_RELEASE );//Breakout.Keys[ key ] = GL_FALSE;
    }
}

/**
 * Application class
 * 1. Handles creating Window
 * 2. Handles event polling
 * 3. Handles main loop
 */
class Application {
public:

    enum AppState {
        ACTIVE,
        STOPPED
    };

    Application() : Application( 800, 600, false ) { };

    Application( int width, int height, bool fullscreen ) :
            appState( AppState::STOPPED ), model( Model()) {
        if ( !glfwInit()) {
            std::cerr << "CANNOT START GLFW\n";
            exit( EXIT_FAILURE );
        }
#ifdef DEBUG
        else {
            std::cout << "GLFW INIT\n";
        }
#endif

        glfwWindowHint( GLFW_SAMPLES, 4 );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );
        glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE ); // macOS
        glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
        glfwWindowHint( GLFW_RESIZABLE, GL_FALSE );

        this->window = glfwCreateWindow( 800, 600, "Breakout", nullptr, nullptr );
        if ( this->window == NULL ) {
            std::cerr << "WINDOW IS NULL\n";
            glfwTerminate();
            exit( EXIT_FAILURE );
        }
#ifdef DEBUG
        else {
            std::cout << "WINDOW CREATED\n";
        }
#endif

        glfwMakeContextCurrent( this->window );

        glewExperimental = GL_TRUE;
        if ( glewInit() != GLEW_OK ) {
            std::cerr << "CANNOT START GLEW\n";
        }
#ifdef DEBUG
        else {
            std::cout << "GLEW init" << std::endl;
        }
#endif
        glGetError(); // Call it once to catch glewInit() bug, all other errors are now from our application.
        glfwSetInputMode( this->window, GLFW_STICKY_KEYS, GL_TRUE );
        glfwSetKeyCallback( this->window, key_callback );

        // OpenGL configuration
        glViewport( 0, 0, width, height );
        glfwSetFramebufferSizeCallback( this->window, []( GLFWwindow *w, int width, int height ) -> void {
            glViewport( 0, 0, width, height );
        } );

//        glEnable( GL_CULL_FACE );
        glEnable( GL_BLEND );
        glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );

        this->shader = new Shader();

    }

    void start() {
        if ( this->appState == AppState::ACTIVE ) {
            return;
        }
        this->appState = AppState::ACTIVE;
        GLfloat deltaTime = 0.0f;
        GLfloat lastFrame = 0.0f;

        float vertices[] = { 0.0f, 0.5f, 0.5f, -0.5f, -0.5f, -0.5f };
        GLuint vbo;
        glGenBuffers( 1, &vbo );
        GLenum target = GL_ARRAY_BUFFER;
        glBindBuffer( target, vbo ); // Make VBO active array buffer
        glBufferData( target, sizeof( vertices ), vertices, GL_STATIC_DRAW );

        auto attr = this->shader->getAttr( Shader::VERTEX_ATTR::POSITION );
        int values = 2;
        int stride = 0;
        void *offset = (void *) 0;
        glVertexAttribPointer( attr, values, GL_FLOAT, false, stride, offset );
        glEnableVertexAttribArray( attr );

        GLuint vao;
        glGenVertexArrays( 1, &vao );
        glBindVertexArray( vao );


        while ( !glfwWindowShouldClose( window )) {
            // Calculate delta time
            GLfloat currentFrame = glfwGetTime();
            deltaTime = currentFrame - lastFrame;
            lastFrame = currentFrame;
            auto fps = 1 / deltaTime;

            glfwPollEvents();

            // ProcessInput
            this->process( deltaTime );

            // UpdateState
            this->update( deltaTime );


            glClearColor( 0.0f, 0.0f, 0.0f, 1.0f );
            glClear( GL_COLOR_BUFFER_BIT );

            // RenderFrame
            this->render( deltaTime );

            glfwSwapBuffers( window );
        }
    }


    bool stop() {
        if ( !this->appState == AppState::STOPPED ) {
            return false;
        }

        if ( this->shader ) {
            delete ( this->shader );
        }

        glfwTerminate();

        return true;
    }

    ~Application() {
        this->stop();
    }

private:
    AppState appState;
    Model model;
    GLFWwindow *window;
    Shader *shader;

    /**
     * Update all relevant components before render
     * @param deltaTime
     * @return
     */
    bool update( GLfloat deltaTime ) {
        return true;
    }

    /**
     * Render all components based on input and deltaTime
     * @param deltaTime
     * @return
     */
    bool render( GLfloat deltaTime ) {


        return true;
    }

    /**
     * Process input
     * @return
     */
    bool process( GLfloat deltaTime ) {

        return true;
    }
};


#endif //OPENWORLD_APPLICATION_H
