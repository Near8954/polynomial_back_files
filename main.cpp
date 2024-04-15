#include <iostream>
#include "./src/base/base.h"

int main()
{
    polynomial p("y^2+z^2+k^2+x^2+y^2+z^2+k^2+x^2+y^2+z^2+k^2+x^2");
    p.normalize();
    std::cout << p.to_string() << '\n';
    std::cout << p.size();
    return 0;
}
