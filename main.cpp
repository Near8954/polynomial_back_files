#include <iostream>
#include "./src/base/base.h"

int main()
{
    auto p = polynomial("x^7+7x^3+5");
    std::vector<int64_t> v;
    v.assign(26, 0);
    v['x' - 'a'] = 4;
    std::cout << p.get_value_in_point(v);

//    auto m1 = node("x^7");
//    auto m2 = node("7x^3");
//    auto m3 = node("5");
//
//    std::cout << m1.get_derivative('x').to_string() << '\n';
//    std::cout << m2.get_derivative('x').to_string() << '\n';
//    std::cout << m3.get_derivative('x').to_string() << '\n';

    return 0;
}
