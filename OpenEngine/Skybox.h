//
// Created by olafurj on 04/09/18.
//

#ifndef OPENWORLD_SKYBOX_H
#define OPENWORLD_SKYBOX_H

#include "../learnopengl/shader.h"

static std::vector<float> skyboxVertices = {
        // positions
        -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f,
        -1.0f,

        -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f,
        -1.0f, 1.0f,

        1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f,
        -1.0f,

        -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f,
        1.0f,

        -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f,
        -1.0f,

        -1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f,
        -1.0f, 1.0f };

namespace {
    const char VERTEX_PATH[] = "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.vertex.glsl";
    const char FRAGMENT_PATH[] = "/home/olafurj/Dropbox/dev/OpenWorld/src/Shaders/skybox.fragment.glsl";
}


namespace ow {
    namespace graphics {
        class Skybox {


        public:
            Skybox( Loader &loader ) : shader( Shader( VERTEX_PATH, FRAGMENT_PATH, nullptr, "Skybox" )) {
                model = std::make_unique<RawModel>( loader.loadToVAO( shader, skyboxVertices ));
                shader.use();
                shader.setInt( "skybox", 0 );
                textureId = TextureManager::loadCubemap();
            }

            void render( Renderer &renderer, glm::mat4 view, glm::mat4 projection ) {
                glDepthFunc( GL_LEQUAL );

                shader.use();
                shader.setMat4( "view", view );
                shader.setMat4( "projection", projection );

                renderer.render( *this->model );

                glDepthFunc( GL_LESS );
            }

        private:
            unsigned int textureId;
            std::unique_ptr<RawModel> model;
            Shader shader;
        };
    }
}

#endif //OPENWORLD_SKYBOX_H
