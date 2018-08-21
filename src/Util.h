//
// Created by olafurj on 17/08/18.
//

#ifndef OPENWORLD_UTIL_H
#define OPENWORLD_UTIL_H

#include <fstream>
#include <sstream>
#include <stdexcept>

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
};

#endif //OPENWORLD_UTIL_H
