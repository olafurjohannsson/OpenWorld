//
// Created by olafurj on 02/09/18.
//

#ifndef OPENWORLD_RAWMODEL_H
#define OPENWORLD_RAWMODEL_H

class RawModel {
private:
    int vaoId;
    int vertexCount;
    GLuint vboId;
public:
    RawModel( int vid, GLuint vboId, int vc ) : vaoId( vid ), vboId( vboId ), vertexCount( vc ) {

    }

    const GLuint getVboId() const {
        return vboId;
    }

    const int getVaoId() const {
        return vaoId;
    }

    const int getVertexCount() const {
        return vertexCount;
    }

    friend std::ostream &operator<<( std::ostream &os, const RawModel &rm ) {
        os << "VAOID: " << rm.getVaoId() << std::endl;
        os << "VTXCNT: " << rm.getVertexCount() << std::endl;
        return os;
    }
};

#endif //OPENWORLD_RAWMODEL_H
