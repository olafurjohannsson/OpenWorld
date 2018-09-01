//
// Created by olafurj on 29/08/18.
//

#ifndef OPENWORLD_TEST_H
#define OPENWORLD_TEST_H

class Raw {
private:
    unsigned char *data;

    Raw( const unsigned char *data, std::size_t size ) : data( new unsigned char[size] ) { // allocate
        // populate
        std::memcpy( this->data, data, size );
    }
public:
    Raw( unsigned const char *data = "" ) : Raw( data, std::strlen( data ) + 1 ) { }
    ~Raw() {
        delete[] this->data; // deallocate
    }

    // copy constructor
    Raw( const Raw &other ) : Raw( other.data ) { }

    // move constructor, move data, while leaving nullptr in other.data
    Raw( Raw &&other ) noexcept : data( std::exchange( other.data, nullptr )) { }

    // copy assignment
    Raw &operator=( const Raw &other ) {
        *this = Raw( other );
        return *this;
    }

    // move assignment
    Raw &operator=( Raw &&other ) noexcept {
        std::swap( this->data, other.data );
        return *this;
    }
};

#endif //OPENWORLD_TEST_H
