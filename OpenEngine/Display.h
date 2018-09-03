//
// Created by olafurj on 01/09/18.
//

#ifndef OPENWORLD_DISPLAY_H
#define OPENWORLD_DISPLAY_H

#include "Sync.h"
#include <GLFW/glfw3.h>
#include <cstdlib>
#include <iostream>
#include "../learnopengl/camera.h"

Camera camera( glm::vec3( 0.0f, 0.0f, 3.0f ));
float lastX = 0;
float lastY = 0;
bool firstMouse = true;

// timing
float deltaTime = 0.0f;
float lastFrame = 0.0f;

class Display {
public:

    Display( int screenWidth, int screenHeight, const char *name, bool fullscreen = false ) {
        if ( !glfwInit()) {
            std::cout << "FAILED TO INIT GLFW\n";
            exit( 0 );
        }

        lastX = (float) screenWidth / 2.0;
        lastY = (float) screenHeight / 2.0;

        glfwWindowHint( GLFW_SAMPLES, 4 );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, 3 );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, 3 );
        glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
        glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );
        glfwWindowHint( GLFW_RESIZABLE, GL_TRUE );

        if ( fullscreen ) {
            m_window = glfwCreateWindow( screenWidth, screenHeight, name, glfwGetPrimaryMonitor(), nullptr );
        }
        else {

            m_window = glfwCreateWindow( screenWidth, screenHeight, name, nullptr, nullptr );
        }

        // Context and callbacks

        glfwMakeContextCurrent( m_window );
        glfwSetWindowUserPointer( m_window, this );
        glfwSetFramebufferSizeCallback( m_window, [ ]( GLFWwindow *window, int width, int height ) {
            glViewport( 0, 0, width, height );
        } );
        glfwSetCursorPosCallback( m_window, mouseCallback );
        glfwSetScrollCallback( m_window, scrollCallback );

        glfwSetInputMode( m_window, GLFW_CURSOR, GLFW_CURSOR_DISABLED );
        glfwSetInputMode( m_window, GLFW_STICKY_KEYS, GL_TRUE );

        /** Initialize GLAD before calling OpenGL functions */
        if ( !gladLoadGLLoader((GLADloadproc) glfwGetProcAddress )) {
            std::cout << "Failed to initialize GLAD" << std::endl;
            exit( 0 );
        }

        glEnable( GL_DEPTH_TEST );
    }

    static void mouseCallback( GLFWwindow *glfWwindow, double xpos, double ypos ) {
        if ( firstMouse ) {
            lastX = xpos;
            lastY = ypos;
            firstMouse = false;
        }

        float xoffset = xpos - lastX;
        float yoffset = lastY - ypos; // reversed since y-coordinates go from bottom to top

        lastX = xpos;
        lastY = ypos;

        camera.ProcessMouseMovement( xoffset, yoffset );
    }

    static void scrollCallback( GLFWwindow *window, double xoffset, double yoffset ) {
        camera.ProcessMouseScroll( yoffset );
    }

    static void sync( int fps ) {
        Sync::sync( fps );
    }

    static void update() {
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        glfwSwapBuffers( m_window );
        glfwPollEvents();
    }

    static void destroy() {
        glfwTerminate();
    }

    static bool isCloseRequested() {
        return glfwWindowShouldClose( m_window ) || glfwGetKey( m_window, GLFW_KEY_ESCAPE ) == GLFW_PRESS;
    }
    static GLFWwindow *getWindow() {
        return m_window;
    }
private:
    static GLFWwindow *m_window;
};

GLFWwindow *Display::m_window = nullptr;
#endif //OPENWORLD_DISPLAY_H
