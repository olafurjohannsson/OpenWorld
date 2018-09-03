//
// Created by olafurj on 01/09/18.
//

#ifndef OPENWORLD_DISPLAYMANAGER_H
#define OPENWORLD_DISPLAYMANAGER_H

#include "Display.h"

class DisplayManager {
private:
    static const int WIDTH = 1280;
    static const int HEIGHT = 720;
    static const int FPS_CAP = 120;
    static Display *display;
public:

    static Display *createDisplay( const char *name ) {
        if ( DisplayManager::display == nullptr ) {
            DisplayManager::display = new Display( WIDTH, HEIGHT, name, false );
            std::cout << "display created\n";
            glViewport( 0, 0, WIDTH, HEIGHT );
        }
        return DisplayManager::display;
    }



    static void updateDisplay() {
        Display::sync( FPS_CAP );
        Display::update();
    }

    static void closeDisplay() {
        Display::destroy();
        delete DisplayManager::display;
    }

};

Display *DisplayManager::display = nullptr;
#endif //OPENWORLD_DISPLAYMANAGER_H
