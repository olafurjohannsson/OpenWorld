//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_LOADER_H
#define OPENWORLD_LOADER_H

#include "RawModel.h"
#include <vector>

#include <GLFW/glfw3.h>
#include <sstream>

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

    void storeDataInAttributeList( int attributeNumber, std::vector<float> positions ) {
        // generate vbo and store it
        GLuint vboId;
        glGenBuffers( 1, &vboId );
        vbos.push_back( vboId );

        // bind buffer and add data
        glBindBuffer( GL_ARRAY_BUFFER, vboId );

        printf( "storeDataInAttrList, positions * flaot: %d\n", positions.size() * sizeof( float ));
        glBufferData( GL_ARRAY_BUFFER, positions.size() * sizeof( float ), positions.data(), GL_STATIC_DRAW );

        // describe the data
        glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof( GL_FLOAT ), (void *) 0 );
        glEnableVertexAttribArray( 0 );

        glBindBuffer( GL_ARRAY_BUFFER, 0 );

    }

    void unbindVAO() {
        glBindVertexArray( 0 );
    }

public:
    RawModel loadToVAO( std::vector<float> positions ) {
        GLuint vaoId = createVAO();
        storeDataInAttributeList( 0, positions );
        unbindVAO();
        RawModel rm( vaoId, positions.size() / 3 );
        rawModels.push_back( rm );
        return rm;
    }

    RawModel loadToVAO( float *positions, size_t size ) {
        std::vector<float> v( positions, positions + size );
        return loadToVAO( v );
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
