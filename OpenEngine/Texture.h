//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_TEXTURE_H
#define OPENWORLD_TEXTURE_H

//#include <stb_image.h>
#include <iostream>
#include <glad/glad.h>
#include <SOIL/stb_image_aug.h>

namespace ow
{
namespace graphics
{
class Texture
{

public:
    unsigned int loadTexture( const char *path )
    {
        GLuint textureId;
        glGenTextures( 1, &textureId );

        int width, height, nrComponents;
        unsigned char *data = stbi_load( path, &width, &height, &nrComponents, 0 );
        if( data )
        {
            glBindTexture( GL_TEXTURE_2D, textureId );
            GLenum f = format( nrComponents );
            glTexImage2D( GL_TEXTURE_2D, 0, f, width, height, 0, f, GL_UNSIGNED_BYTE, data );
            glGenerateMipmap( GL_TEXTURE_2D );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
        }
        else
        {
            std::cerr << "Texture failed to load at path: " << path << std::endl;
            glDeleteTextures( 1, &textureId );
        }

        stbi_image_free( data );
        return textureId;
    }
    unsigned int loadTexture2( const char *path )
    {
        GLuint textureId;
        glGenTextures( 1, &textureId );

        int width, height, nrComponents;
        unsigned char *data = stbi_load( path, &width, &height, &nrComponents, 0 );
        if( data )
        {
            glActiveTexture( GL_TEXTURE0 );
            glBindTexture( GL_TEXTURE_2D, textureId );
            GLenum f = format( nrComponents );

            glTexImage2D( GL_TEXTURE_2D, 0, f, width, height, 0, f, GL_UNSIGNED_BYTE, data );
            glGenerateMipmap( GL_TEXTURE_2D );

            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR );
            glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_LOD_BIAS, -4 );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST );         //No mipmaps nearby
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 1 );
        }
        else
        {
            std::cerr << "Texture failed to load at path: " << path << std::endl;
            glDeleteTextures( 1, &textureId );
        }

        stbi_image_free( data );
        return textureId;
    }
private:
    GLenum format( int nrComponents )
    {
        if( nrComponents == 1 )
            return GL_RED;
        else if( nrComponents == 3 )
            return GL_RGB;
        else if( nrComponents == 4 )
            return GL_RGBA;
        throw std::runtime_error( "Invalid texture components" );
    }

};
}
};

#endif //OPENWORLD_TEXTURE_H
