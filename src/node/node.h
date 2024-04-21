#ifndef NODE_H
#define NODE_H

#include <string>
#include <utility>
#include <vector>
#include <iostream>
#include <set>

struct wrong_monomial {
    wrong_monomial(std::string s, char ch) {
        error_type = std::move(s);
        c = ch;
    }

    std::string error_type;
    char c = 'Z';
};

struct node {
    node();

    explicit node(std::string s);

    node(const node &t);

    ~node() = default;

    bool operator<(node &nd);

    bool operator==(node &nd);

    bool operator!=(node &nd);

    node operator*(node &nd);

    bool operator>(node &nd);

    bool operator<=(node &nd);

    std::string to_string();

    int64_t k = 1;
    std::vector<int64_t> powers;
    node *prev = nullptr;
    node *next = nullptr;
};

#endif // NODE_H
