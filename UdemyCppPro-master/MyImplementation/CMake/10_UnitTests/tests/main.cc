//  Purpose of this code is to test the my_lib library
//  Executable <- my_lib -> UnitTestExecutable

#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#include <catch2/catch.hpp>

#include "my_lib.h"

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( factorial(0) == 1 );
    REQUIRE( factorial(1) == 1 );
    REQUIRE( factorial(2) == 2 );
    REQUIRE( factorial(3) == 6 );
    REQUIRE( factorial(10) == 3628800 );
}
