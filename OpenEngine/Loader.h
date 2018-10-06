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
        offset += positions.size() * sizeof( float );
        glEnableVertexAttribArray( 0 );

        glBindBuffer( GL_ARRAY_BUFFER, 0 );
        return vboId;
    }

    void unbindVAO() {
        glBindVertexArray( 0 );
    }

public:

    void transform( const Shader &shader, const glm::vec3 &vec ) {
        glm::mat4 transform;
        transform = glm::translate( transform, vec );
        GLint uniTrans = glGetUniformLocation( shader.ID, "transform" );
        glUniformMatrix4fv( uniTrans, 1, GL_FALSE, glm::value_ptr( transform ));
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
