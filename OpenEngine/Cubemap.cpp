//
// Created by olafurj on 03/09/18.
//


#include "Cubemap.h"



using namespace ow::graphics;

Cubemap::~Cubemap() {

}

Cubemap::Cubemap( std::vector<std::string> &faces ) : faces( faces ), ok( false ), textureId( -1 ) {
    ok = faces.size() == 6;
    glGenTextures( 1, &textureId );
    glBindTexture( GL_TEXTURE_CUBE_MAP, textureId );
}

const bool Cubemap::loadCubemap() const {
    if ( !ok ) {
        //Application::console->error( "Cubemap is not OK, invalid faces" );
        return false;
    }
    bool success = true;
    for ( int i = 0; i < faces.size(); ++i ) {
        int width, height, nrChannels;
        unsigned char *data = stbi_load( faces[ i ].c_str(), &width, &height, &nrChannels, 0 );
        if ( data ) {
            glTexImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE,
                          data );
        } else {
            std::cerr << "Cubemap texture failed to load at path: " << faces[ i ] << std::endl;
            success = false;
        }
        stbi_image_free( data );
    }

    glTexParameteri( GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
    glTexParameteri( GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
    glTexParameteri( GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
    glTexParameteri( GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
    glTexParameteri( GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE );
    return success;
}

const unsigned int Cubemap::getTextureId() const {
    if ( textureId == -1 || !ok ) {
        std::cerr << "Texture is invalid or faces are invalid\n";
        return -1;
    }
    return textureId;
}