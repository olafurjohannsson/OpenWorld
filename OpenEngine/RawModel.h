//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_RAWMODEL_H
#define OPENWORLD_RAWMODEL_H

class RawModel {

public:
    RawModel( GLuint vid, GLuint vboId, int vc, GLuint textureId = 0 ) : vaoId( vid ), vboId( vboId ),
                                                                         vertexCount( vc ),
                                                                         textureId( textureId ) {

    }

    const GLuint getVboId() const {
        return vboId;
    }

    const GLuint getVaoId() const {
        return vaoId;
    }

    const int getVertexCount() const {
        return vertexCount;
    }

    const GLuint getTextureId() const {
        return textureId;
    }

    friend std::ostream &operator<<( std::ostream &os, const RawModel &rm ) {
        os << "VAOID: " << rm.getVaoId() << std::endl;
        os << "VTXCNT: " << rm.getVertexCount() << std::endl;
        return os;
    }

private:
    GLuint vaoId;
    int vertexCount;
    GLuint vboId;
    GLuint textureId;
};

#endif //OPENWORLD_RAWMODEL_H
