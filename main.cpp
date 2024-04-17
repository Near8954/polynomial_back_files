#include <iostream>
#include "./src/base/base.h"

int main()
{
    polynomial p1("0x+0x+0x+0x+0x+0x");
    polynomial p2("0xxxxxx");
    p1.normalize();
    p2.normalize();
    std::cout << p1.to_string() << '\n';
    return 0;
}
