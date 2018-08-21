//
// Created by olafurj on 16/08/18.
//

#ifndef OPENWORLD_MODEL_H
#define OPENWORLD_MODEL_H

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

struct Mesh {
    std::vector<GLfloat> vertexPositions;
    std::vector<GLfloat> textureCoords;
    std::vector<GLuint> indices;
};

struct ModelInfo {
    GLuint vao = 0;
    GLuint indicesCount = 0;

    inline void reset() {
        vao = 0;
        indicesCount = 0;
    }
};

class Model {
public:

    Model() {

    }

    Model( const Mesh &mesh ) {
        addData( mesh );
    }

    ~Model() {
        deleteData();
    }


    void genVAO() {
        if ( this->modelInfo.vao != 0 ) {
            this->deleteData();
        }

        glGenVertexArrays( 1, &this->modelInfo.vao );
        glBindVertexArray( this->modelInfo.vao );
    }

    void deleteData() {
        if ( modelInfo.vao )
            glDeleteVertexArrays( 1, &modelInfo.vao );
        if ( buffers.size() > 0 )
            glDeleteBuffers( buffers.size(),
                             buffers.data());

        buffers.clear();

        vboCount = 0;
        modelInfo.reset();
    }

    void bindVAO() {
        glBindVertexArray( this->modelInfo.vao );
    }

    void addData( const Mesh &mesh ) {
        this->genVAO();

        addVBO( 3, mesh.vertexPositions );
        addVBO( 2, mesh.textureCoords );
        addEBO( mesh.indices );

    }

    void addVBO( int dimensions, const std::vector<GLfloat> &data ) {
        GLuint vbo;
        glGenBuffers( 1, &vbo );
        glBindBuffer( GL_ARRAY_BUFFER, vbo );
        glBufferData( GL_ARRAY_BUFFER,
                      data.size() * sizeof( GLfloat ),
                      data.data(),
                      GL_STATIC_DRAW );

        glVertexAttribPointer( vboCount,
                               dimensions,
                               GL_FLOAT,
                               GL_FALSE,
                               0,
                               (GLvoid *) 0 );

        glEnableVertexAttribArray( vboCount++ );

        buffers.push_back( vbo );
    }

    void addEBO( const std::vector<GLuint> &indices ) {
        modelInfo.indicesCount = indices.size();
        GLuint ebo;
        glGenBuffers( 1, &ebo );
        glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, ebo );
        glBufferData( GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof( GLuint ),
                      indices.data(), GL_STATIC_DRAW );
    }

    int getIndicesCount() {
        return modelInfo.indicesCount;
    }

    const ModelInfo &getModelInfo() const {
        return modelInfo;
    }

private:
    ModelInfo modelInfo;
    int vboCount = 0;
    std::vector<GLuint> buffers;
};

#endif //OPENWORLD_MODEL_H
