//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_TEXTUREMANAGER_H
#define OPENWORLD_TEXTUREMANAGER_H

#include "Cubemap.h"

namespace ow {
    namespace graphics {
        class TextureManager {
        public:
            static unsigned int loadCubemap() {
                std::vector <std::string> faces = {
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/right.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/left.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/top.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/bottom.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/front.jpg",
                        "/home/olafurj/Dropbox/dev/OpenWorld/learnopengl/resources/textures/skybox/back.jpg", };
                Cubemap cubemap( faces );
                if ( cubemap.loadCubemap()) {
                    return cubemap.getTextureId();
                }
                return -1;
            }
        };
    }
}

#endif //OPENWORLD_TEXTUREMANAGER_H
