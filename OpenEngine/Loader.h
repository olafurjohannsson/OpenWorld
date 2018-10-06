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

class Loader {

private:
    std::vector<GLuint> vaos;
    std::vector<GLuint> vbos;
    std::vector<RawModel> rawModels;

    GLuint createVAO() {
        GLuint vaoId;

        glGenVertexArrays( 1, &vaoId );
        vaos.push_back( vaoId );
        glBindVertexArray( vaoId );
        return vaoId;
    }

    void bindIndiceBuffer( std::vector<int> indices ) {
        GLuint vboId;
        glGenBuffers( 0, &vboId );
        vbos.push_back( vboId );
        glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, vboId );
        glBufferData( GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof( float ), indices.data(), GL_STATIC_DRAW );
    }


    GLuint storeDataInAttributeList( int attributeNumber, std::vector<float> positions ) {
        // generate vbo and store it
        GLuint vboId;
        glGenBuffers( 1, &vboId );
        vbos.push_back( vboId );

        // bind buffer and add data
        glBindBuffer( GL_ARRAY_BUFFER, vboId );

        //printf( "storeDataInAttrList, positions * flaot: %d\n", positions.size() * sizeof( float ));
        glBufferData( GL_ARRAY_BUFFER, positions.size() * sizeof( float ), positions.data(), GL_STATIC_DRAW );

        // describe the data
        glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof( GL_FLOAT ), (void *) 0 );
        glEnableVertexAttribArray( 0 );

        glBindBuffer( GL_ARRAY_BUFFER, 0 );
        return vboId;
    }

    void unbindVAO() {
        glBindVertexArray( 0 );
    }

public:

    void updatePosition( const RawModel &model, const Shader &shader, const std::vector<float> &positions ) {
//        glBufferSubData( GL_ARRAY_BUFFER, 0, positions.size() * sizeof( float ), positions.data());
        glBindBuffer( GL_ARRAY_BUFFER, model.getVboId());
        glBufferData( GL_ARRAY_BUFFER, sizeof( float ) * positions.size(), positions.data(), GL_STATIC_DRAW );
//        GLint posAttrib = glGetAttribLocation( shader.ID, "position" );
//        glEnableVertexAttribArray( posAttrib );
//        glVertexAttribPointer( posAttrib, 2, GL_FLOAT, GL_FALSE, 3 * sizeof( float ), (void *) 0 );

    }

    void updateData( const RawModel &model, std::vector<float> positions ) {
        glBufferSubData( GL_ARRAY_BUFFER, 0, 3 * sizeof( GL_FLOAT ), positions.data());
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
//        for ( const auto &rawModel: rawModels ) {
//            delete rawModel;
//        }
    }


};


#endif //OPENWORLD_LOADER_H
