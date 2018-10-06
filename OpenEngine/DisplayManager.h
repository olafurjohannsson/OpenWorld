//
// Created by olafurj on 01/09/18.
//

#ifndef OPENWORLD_DISPLAYMANAGER_H
#define OPENWORLD_DISPLAYMANAGER_H

#include "Display.h"
#include "Application.h"


class DisplayManager {
private:
    // TODO: read from config, not super import this early
    static const int WIDTH = 1280;
    static const int HEIGHT = 720;
    static const int FPS_CAP = 120;

    static Display *display;
public:

    static void createDisplay( const char *name, bool fullscreen = false ) {
        if ( DisplayManager::display == nullptr ) {
            DisplayManager::display = new Display( WIDTH, HEIGHT, name, fullscreen );

            auto width = DisplayManager::WIDTH;
            auto height = DisplayManager::HEIGHT;

            Application::console->info( "Display {} created using {}x{} resolution - fullscreen: {}", name, width,
                                        height, ( fullscreen ? "Yes" : "No" ));

            glViewport( 0, 0, width, height );
        }
    }


    static void updateDisplay(bool &secondPassed) {
        Display::update(secondPassed);
    }

    static void closeDisplay() {
        Application::console->info( "DisplayManager closing, cleaning up display resources" );
        Display::destroy();
        delete DisplayManager::display;
    }

};

Display *DisplayManager::display = nullptr;

#endif //OPENWORLD_DISPLAYMANAGER_H
