//
// Created by olafurj on 15/08/18.
//

#ifndef OPENWORLD_SHADER_H
#define OPENWORLD_SHADER_H

#include <string>
#include <stdexcept>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <iostream>
#include <map>

#include "Util.h"

namespace {
    GLuint compileShader( const GLchar *source, GLenum shaderType ) {
        auto shaderID = glCreateShader( shaderType );

        glShaderSource( shaderID, 1, &source, nullptr );
        glCompileShader( shaderID );

        GLint isSuccess = 0;
        GLchar infoLog[512];

        glGetShaderiv( shaderID, GL_COMPILE_STATUS, &isSuccess );
        if ( !isSuccess ) {
            glGetShaderInfoLog( shaderID, 512, nullptr, infoLog );
            throw std::runtime_error( "Unable to load a shader: " + std::string( infoLog ));
        }

        return shaderID;
    }

    GLuint linkProgram( GLuint vertexShaderID, GLuint fragmentShaderID ) {
        auto id = glCreateProgram();

        glAttachShader( id, vertexShaderID );
        glAttachShader( id, fragmentShaderID );

        glLinkProgram( id );

        return id;
    }


}

class Shader {
public:

    enum VERTEX_ATTR {
        POSITION,
    };

    std::map<VERTEX_ATTR, const GLchar*> vertexAttributeNames = {
            { VERTEX_ATTR::POSITION, "position" }
    };

    GLint getAttr( VERTEX_ATTR attr ) {
        return glGetAttribLocation( this->currentShaderProgramId, this->vertexAttributeNames[ attr ] );
    }

    Shader() {
        // load shaders annd get id
        std::cout << "Loading shaders\n";
        this->programId = this->loadShaders(
                "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/vertex.glsl",
                "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/fragment.glsl" );
        this->getUniforms();
        this->use();
    }

    ~Shader() {
        glDeleteProgram( this->programId );
    }


    void loadInt( GLuint loc, int val ) { glUniform1i( loc, val ); }

    void loadFloat( GLuint loc, float val ) { glUniform1f( loc, val ); }

    void loadVec2( GLuint loc, const glm::vec2 &vec ) { glUniform2f( loc, vec.x, vec.y ); }

    void loadVec3( GLuint loc, const glm::vec3 &vec ) { glUniform3f( loc, vec.x, vec.y, vec.z ); }

    void loadVec4( GLuint loc, const glm::vec4 &vec ) { glUniform4f( loc, vec.x, vec.y, vec.z, vec.w ); }

    void loadMat4( GLuint loc, const glm::mat4 &mat ) {
        glUniformMatrix4fv(
                loc,
                1,
                GL_FALSE, glm::value_ptr( mat ));
    }

    Shader &use() {
        glUseProgram( this->programId );
        return *this;
    }

    void getUniforms() {
        this->use();
        this->locationProjectionViewMatrix = glGetUniformLocation( this->programId, "projViewMatrix" );
        this->locationModelMatrix = glGetUniformLocation( this->programId, "modelMatrix" );
        this->locationViewMatrix = glGetUniformLocation( this->programId, "viewMatrix" );
        this->locationProjectionMatrix = glGetUniformLocation( this->programId, "projMatrix" );
    }


    void loadProjectionViewMatrix( const glm::mat4 &pvMatrix ) {
        this->loadMatrix4( this->locationProjectionViewMatrix, pvMatrix );
    }

    void loadModelMatrix( const glm::mat4 &matrix ) {
        this->loadMatrix4( this->locationModelMatrix, matrix );
    }

    void loadProjectionMatrix( const glm::mat4 &matrix ) {
        this->loadMatrix4( this->locationProjectionMatrix, matrix );
    }

    void loadViewMatrix( const glm::mat4 &matrix ) {
        this->loadMatrix4( this->locationViewMatrix, matrix );
    }

private:
    void loadMatrix4( GLuint location, const glm::mat4 &matrix ) {
        glUniformMatrix4fv( location, 1, GL_FALSE, glm::value_ptr( matrix ));
    }

    GLint currentShaderProgramId;
    GLuint locationProjectionViewMatrix;
    GLuint locationModelMatrix;
    GLuint locationViewMatrix;
    GLuint locationProjectionMatrix;
    GLuint programId;

    GLuint loadShaders( const std::string &vertexShader,
                        const std::string &fragmentShader ) {
        auto vertexSource = Util::getFileContents( vertexShader );

        auto fragmentSource = Util::getFileContents( fragmentShader );


        std::cout << "compiling vertex\n";
        auto vertexShaderID = compileShader( vertexSource.c_str(), GL_VERTEX_SHADER );

        std::cout << "compiling fragment\n";
        auto fragmentShaderID = compileShader( fragmentSource.c_str(), GL_FRAGMENT_SHADER );

        auto shaderID = linkProgram( vertexShaderID, fragmentShaderID );

        glDeleteShader( vertexShaderID );
        glDeleteShader( fragmentShaderID );
        this->currentShaderProgramId = shaderID;
        return shaderID;
    }

};


#endif //OPENWORLD_SHADER_H
