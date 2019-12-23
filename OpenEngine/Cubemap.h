//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_CUBEMAP_H
#define OPENWORLD_CUBEMAP_H

#include <array>
#include <string>
//#include <stb_image.h>
#include <SOIL/stb_image_aug.h>
#include <glad/glad.h>
#include <iostream>



namespace ow
{
namespace graphics
{

class Cubemap
{
public:
    Cubemap( std::array< std::string, 6 > &faces );
    ~Cubemap();
    const bool loadCubemap() const;
    const unsigned int getTextureId() const;
private:
    std::array< std::string, 6 > &faces;
    bool ok;
    unsigned int textureId;
};


}
};

#endif //OPENWORLD_CUBEMAP_H
