//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_RENDERER_H
#define OPENWORLD_RENDERER_H

#include "RawModel.h"

class Renderer {
public:
    void prepare() {
        glClearColor( 1, 0, 0, 1 );
        glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
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
