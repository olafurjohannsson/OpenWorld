//
// Created by olafurj on 17/08/18.
//

#ifndef OPENWORLD_UTIL_H
#define OPENWORLD_UTIL_H

#include <fstream>
#include <sstream>
#include <functional>
#include <chrono>
#include <stdexcept>

using namespace std::chrono;
class Util {

public:
    static std::string getFileContents( const std::string &filePath ) {
        std::ifstream inFile( filePath );
        if ( !inFile.is_open()) {
            throw std::runtime_error( "Unable to open file: " + filePath );
        }

        std::stringstream stream;
        stream << inFile.rdbuf();
        return stream.str();
    }


    struct Fn {
        static unsigned long long int measure( std::function<void()> fn ) {
            high_resolution_clock::time_point started = std::chrono::high_resolution_clock::now();
            fn();
            high_resolution_clock::time_point done = std::chrono::high_resolution_clock::now();
            unsigned long long int time = duration_cast<std::chrono::milliseconds>( done - started ).count();
            return time;
        }
    };
};

#endif //OPENWORLD_UTIL_H
