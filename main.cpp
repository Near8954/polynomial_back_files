#include <iostream>
#include "./src/base/base.h"

int main()
{
    auto *pol = new Polynomial("x^2");
    auto *pol2 = new Polynomial("x");
    Polynomial ans = *pol / *pol2;
    std::cout << ans.toString() << std::endl;
    return 0;
}
