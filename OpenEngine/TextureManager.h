//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_TEXTUREMANAGER_H
#define OPENWORLD_TEXTUREMANAGER_H

#include "Cubemap.h"
#include "Application.h"

namespace ow {
    namespace graphics {
        class TextureManager {
        public:
            static unsigned int loadCubemap() {
                std::array<std::string, 6> faces = {
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/right.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/left.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/top.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/bottom.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/front.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/back.jpg", };

                Cubemap cubemap( faces );
                if ( cubemap.loadCubemap()) {

                    unsigned int textureId = cubemap.getTextureId();
                    Application::console->debug( "Cubemap loaded, texture id: {}", textureId );
                    return textureId;
                } else {
                    Application::console->debug( "Cubemap could not be loaded" );
                }
                return -1;
            }
        };
    }
}

#endif //OPENWORLD_TEXTUREMANAGER_H
