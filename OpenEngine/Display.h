//
// Created by olafurj on 01/09/18.
//

#ifndef OPENWORLD_DISPLAY_H
#define OPENWORLD_DISPLAY_H

//#define GLFW_INCLUDE_NONE


#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <cstdlib>
#include <iostream>

#include "Sync.h"
#include "../learnopengl/camera.h"
#include "Application.h"

Camera camera( glm::vec3( 0.0f, 0.0f, 3.0f ));
float lastX = 0;
float lastY = 0;
bool firstMouse = true;

// timing
double deltaTime = 0.0f;
double lastTime = 0.0f;
double fps = 0.0f;
int frames = 0;

class Display {
public:

    Display( int screenWidth, int screenHeight, const char *name, bool fullscreen = false ) : screenWidth(
            screenWidth ), screenHeight( screenHeight ) {
        if ( !glfwInit()) {
            Application::console->critical( "FAILED TO INIT GLFW" );
            exit( EXIT_FAILURE );
        } else {
            Application::console->debug( "GLFW Initialized" );
        }

        lastX = (float) screenWidth / 2.0;
        lastY = (float) screenHeight / 2.0;
        int openGlMajor = Application::getConfigValue<int>( "OPENGL_MAJOR_VERSION", -1 );
        int openGlMinor = Application::getConfigValue<int>( "OPENGL_MINOR_VERSION", -1 );
        if ( openGlMajor == -1 or openGlMinor == -1 ) {
            Application::abort( "OpenGL version is invalid (-1.-1)" );
        }
        int antiAliasing = Application::getConfigValue<int>( "ANTI_ALIASING", 4 );
        glfwWindowHint( GLFW_SAMPLES, antiAliasing );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MAJOR, openGlMajor );
        glfwWindowHint( GLFW_CONTEXT_VERSION_MINOR, openGlMinor );
        glfwWindowHint( GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE );
        glfwWindowHint( GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE );
        glfwWindowHint( GLFW_RESIZABLE, GL_TRUE );

        if ( fullscreen ) {
            m_window = glfwCreateWindow( screenWidth, screenHeight, name, glfwGetPrimaryMonitor(), nullptr );
        } else {

            m_window = glfwCreateWindow( screenWidth, screenHeight, name, nullptr, nullptr );
        }


        // Context and callbacks
        glfwMakeContextCurrent( m_window );
        glfwSetWindowUserPointer( m_window, this );
        glfwSetErrorCallback( errorCallback );
        glfwSetFramebufferSizeCallback( m_window, this->windowResizeCallback );
        glfwSetWindowSizeCallback( m_window, windowResizeCallback );
        glfwSetMouseButtonCallback( m_window, mouseButtonCallback );
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

        Application::console->info( "Display created using OpenGL version {}.{}", openGlMajor, openGlMinor );
    }

    static void mouseButtonCallback( GLFWwindow *window, int button, int action, int mods ) {
        Display *win = (Display *) glfwGetWindowUserPointer( window );


    }


    static void errorCallback( int error, const char *description ) {
        std::cout << "Error:" << std::endl << description << std::endl;
    }

    static void windowResizeCallback( GLFWwindow *window, int width, int height ) {
        Display *win = (Display *) glfwGetWindowUserPointer( window );
        win->screenWidth = width;
        win->screenHeight = height;
        glViewport( 0, 0, win->screenWidth, win->screenHeight );
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


    static void update( bool &secondPassed ) {
        double currentTime = glfwGetTime();
        deltaTime = ( currentTime - lastTime ) / 1000.0f;
        fps = 1 / deltaTime;
        frames++;

        // one sec
        secondPassed = false;
        if ( currentTime - lastTime >= 1.0 ) {
            const char *out = "%f ms/frame - %f frames/sec\n";
            fprintf( stdout, out, ( 1000.0f / double( frames )), fps );
            frames = 0;
            lastTime = glfwGetTime();
            secondPassed = true;
        }

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
    int screenHeight;
    int screenWidth;
};

GLFWwindow *Display::m_window = nullptr;
#endif //OPENWORLD_DISPLAY_H
