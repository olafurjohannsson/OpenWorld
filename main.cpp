

#include <iostream>
#include "src/Application.h"
#include "src/Shader.h"
#include "src/Model.h"

int main() {
    try {
        /**
         * Initialize app,
         *  Init GLFW and set hints
         *  Create window
         *  Set current context
         *  Init GLEW
         *  Set key callback
         *  Set viewport
         *  Create shader
         */
        Application app;

        /**
         * Start GLFW window loop
         * Poll GLFW events
         * Swap GLFW buffers
         * Process/Update/Render
         */
        app.start();

        if ( !app.stop()) {
            std::cerr << "Could not stop app!" << std::endl;
            return EXIT_FAILURE;
        }
    }
    catch (const std::exception& e) {
        std::cout << e.what() << std::endl;
    }
    catch ( ... ) {
        std::cout << "Exception!\n";
    }
    return EXIT_SUCCESS;
}