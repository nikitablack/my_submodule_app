#include <iostream>
#include <foo.hpp>
#include <bar.hpp>

int main()
{
    std::cout << "main()" << std::endl;

    foo();

    bar();

    return 0;
}