//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_RENDERER_H
#define OPENWORLD_RENDERER_H

#include "RawModel.h"

#define CX 16
#define CY 16
#define CZ 16

typedef glm::tvec4<GLbyte> byte4; // 4-dimensional vector of bytes 32bits

struct Chunk {
    uint8_t block[CX][CY][CZ];
    GLuint vbo;
    int elements;
    bool changed;

    Chunk() {
        std::memset( block, 0, sizeof( block ));
        elements = 0;
        changed = true;
        glGenBuffers( 1, &vbo );
    }

    ~Chunk() {
        glDeleteBuffers( 1, &vbo );
    }

    uint8_t get( int x, int y, int z ) {
        return block[ x ][ y ][ z ];
    }

    void set( int x, int y, int z, uint8_t type ) {
        block[ x ][ y ][ z ] = type;
        changed = true;
    }


    void update() {
        changed = false; // fill vbo

        byte4 vertex[CX * CY * CZ * 6 * 6];
        int i = 0;
        for ( int x = 0; x < CX; ++x ) {
            for ( int y = 0; y < CY; ++y ) {
                for ( int z = 0; z < CZ; ++z ) {
                    uint8_t type = block[ x ][ y ][ z ];

                    if ( !type )
                        continue;


                    // negative x
                    vertex[ i++ ] = byte4( x, y, z, type );
                    vertex[ i++ ] = byte4( x, y, z + 1, type );
                    vertex[ i++ ] = byte4( x, y + 1, z, type );
                    vertex[ i++ ] = byte4( x, y + 1, z, type );
                    vertex[ i++ ] = byte4( x, y, z + 1, type );
                    vertex[ i++ ] = byte4( x, y + 1, z + 1, type );


                    // positive x
                    vertex[ i++ ] = byte4( x + 1, y, z, type );
                    vertex[ i++ ] = byte4( x + 1, y + 1, z, type );
                    vertex[ i++ ] = byte4( x + 1, y, z + 1, type );
                    vertex[ i++ ] = byte4( x + 1, y + 1, z, type );
                    vertex[ i++ ] = byte4( x + 1, y + 1, z + 1, type );
                    vertex[ i++ ] = byte4( x + 1, y, z + 1, type );

                }
            }
        }
    }

    void render() {
        if ( changed ) {
            update();
        }
    }
};

class Renderer {
public:
    void prepare() {
        glClearColor( 0.3, 0.3, 0.3, 1 );
        glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    }

    void fillBuffer( const std::vector<float> &positions, const std::vector<float> &normals,
                     const std::vector<float> &textureCoordinates ) {
        size_t floatSize = sizeof( float );

        unsigned long positionSize = positions.size() * floatSize;
        unsigned long positionOffset = 0;

        unsigned long normalsSize = normals.size() * floatSize;
        unsigned long normalOffset = positionSize;

        unsigned long textureSize = textureCoordinates.size() * floatSize;
        unsigned long textureOffset = positionSize + normalsSize;

        GLenum target = GL_ARRAY_BUFFER;

        glBufferSubData( target, positionOffset, positionSize, positions.data());
        glBufferSubData( target, normalOffset, normalsSize, normals.data());
        glBufferSubData( target, textureOffset, textureSize, textureCoordinates.data());
        glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof( float ), (void *) 0 );
        glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, 3 * sizeof( float ), (void *) (long long) normalOffset );
        glVertexAttribPointer( 2, 2, GL_FLOAT, GL_FALSE, 2 * sizeof( float ), (void *) (long long) textureOffset );
    }

    void render( const RawModel &rawModel ) {
        glBindVertexArray( rawModel.getVaoId());
        glEnableVertexAttribArray( 0 );
        glDrawArrays( GL_TRIANGLES, 0, rawModel.getVertexCount());
        glDisableVertexAttribArray( 0 );
        glBindVertexArray( 0 );
    }
};

#endif //OPENWORLD_RENDERER_H
