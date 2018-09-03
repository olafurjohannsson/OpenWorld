//
// Created by olafurj on 03/09/18.
//

#ifndef OPENWORLD_SYNC_H
#define OPENWORLD_SYNC_H

#include <vector>
#include <array>
#include <string>
#include <iostream>

const unsigned long long NANOS_IN_SECOND = 1000L * 1000L * 1000L;

class RunningAvg {
private:
    unsigned int offset;


public:
    RunningAvg( int slotCount ) {

    }
};

class Sync {
private:


    static unsigned long nextFrame;

    static bool initialized;

    static RunningAvg *sleepDurations; // = new RunningAvg( 10 );
    static RunningAvg *yieldDurations; // = new RunningAvg( 10 );

public:

    static void sync( int fps ) {

    }

    ~Sync() {
        delete Sync::sleepDurations;
        delete Sync::yieldDurations;
    }

};

bool Sync::initialized = false;
unsigned long Sync::nextFrame = 0;




#endif //OPENWORLD_SYNC_H
