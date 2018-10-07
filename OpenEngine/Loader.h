//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_LOADER_H
#define OPENWORLD_LOADER_H

#include "RawModel.h"
#include <vector>

#include <GLFW/glfw3.h>
#include <sstream>
#include <glad/glad.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <iostream>
#include "Texture.h"
#include <string>
#include <iostream>
#include <unistd.h>


class Loader {

private:
    std::vector<GLuint> vaos;
    std::vector<GLuint> vbos;
    std::vector<RawModel> rawModels;
    int offset = 0;

    GLuint createVAO() {
        GLuint vaoId;

        glGenVertexArrays( 1, &vaoId );
        vaos.push_back( vaoId );
        glBindVertexArray( vaoId );
        return vaoId;
    }

    void unbindVAO() {
        glBindVertexArray( 0 );
    }

    GLuint storeDataInAttributeList( int attributeNumber, std::vector<float> positions ) {
        GLuint vboId;
        glGenBuffers( 1, &vboId );
        vbos.push_back( vboId );
        glBindBuffer( GL_ARRAY_BUFFER, vboId );
        glBufferData( GL_ARRAY_BUFFER, positions.size() * sizeof( float ), positions.data(), GL_STATIC_DRAW );
        glEnableVertexAttribArray( 0 );
        glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 0, (void *) 0 );
        offset += positions.size() * sizeof( float );
        glBindBuffer( GL_ARRAY_BUFFER, 0 );
        return vboId;
    }

public:

    RawModel commit( const Shader &shader,
                     const std::vector<float> &vertices,
                     const char *attrName,
                     const GLint vertexSize,
                     const GLint textureCoordinatesSize ) {
        GLuint vaoId, vboId;
        glGenVertexArrays( 1, &vaoId );
        glBindVertexArray( vaoId );

        glGenBuffers( 1, &vboId );
        glBindBuffer( GL_ARRAY_BUFFER, vboId );
        auto dataSize = vertices.size() * sizeof( float );
        glBufferData( GL_ARRAY_BUFFER, dataSize, vertices.data(), GL_STATIC_DRAW );

        GLuint vertexCoordinatesAttributeIndex = (GLuint) glGetAttribLocation( shader.ID, "vertexCoordinates" );
        GLuint textureCoordinatesAttributeIndex = (GLuint) glGetAttribLocation( shader.ID, "textureCoordinates" );
        if ( vertexCoordinatesAttributeIndex == -1 ) {
            auto out = fmt::format( "Attribute \"{}\" not found in shader!", "vertexCoordinates" );
            Application::console->critical( out );
        }
        if ( textureCoordinatesAttributeIndex == -1 ) {
            auto out = fmt::format( "Attribute \"{}\" not found in shader!", "textureCoordinates" );
            Application::console->critical( out );
        }

        glEnableVertexAttribArray( vertexCoordinatesAttributeIndex );
        glVertexAttribPointer( vertexCoordinatesAttributeIndex, vertexSize, GL_FLOAT, GL_FALSE, 0, (GLvoid *) 0 );


        glEnableVertexAttribArray( textureCoordinatesAttributeIndex );
        glVertexAttribPointer( textureCoordinatesAttributeIndex,
                               textureCoordinatesSize,
                               GL_FLOAT,
                               GL_FALSE,
                // stride is the size in bytes until next texture offset of texture coordinate starts
                               ( vertexSize + textureCoordinatesSize ) * sizeof( float ),
                // data starts at offset of first vertex end
                               (void *) ( vertexSize * sizeof( float )));
        glBindVertexArray( 0 );

        ow::graphics::Texture texture;
        GLuint textureId = texture.loadTexture( "./OpenEngine/container.jpg" );



        RawModel model( vaoId, vboId, vertices.size() / ( vertexSize + textureCoordinatesSize ), textureId );
        auto out = fmt::format( "Model created (VAO: {}, VBO: {}, TXT: {}, SIZE: {}", model.getVaoId(),
                                model.getVboId(), model.getVertexCount(), model.getTextureId());
        Application::console->info( out );
        return model;
    }

    RawModel loadToVAO( const Shader &shader, const std::vector<float> &positions ) {
        GLuint vaoId = createVAO();
        GLint posAttrib = glGetAttribLocation( shader.ID, "position" );
        GLuint vboId = storeDataInAttributeList( posAttrib, positions );
        unbindVAO();
        RawModel rm( vaoId, vboId, positions.size() / 3 );
        rawModels.push_back( rm );
        return rm;
    }

    void transform( const Shader &shader, const glm::vec3 &vec ) {
        glm::mat4 transform;
        transform = glm::translate( transform, vec );
        GLint uniTrans = glGetUniformLocation( shader.ID, "transform" );
        glUniformMatrix4fv( uniTrans, 1, GL_FALSE, glm::value_ptr( transform ));
    }


    std::vector<RawModel> &getRawModel() {
        return rawModels;
    }

    RawModel loadToVAO( const Shader &shader, float *positions, size_t size ) {
        std::vector<float> v( positions, positions + size );
        return loadToVAO( shader, v );
    }

    void cleanUp() {
        for ( const auto &vao : vaos ) {
            glDeleteVertexArrays( 1, &vao );
        }
        for ( const auto &vbo : vbos ) {
            glDeleteBuffers( 1, &vbo );
        }
    }
};

#endif //OPENWORLD_LOADER_H
