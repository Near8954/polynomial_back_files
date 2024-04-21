#ifndef POLYNOMIAL_POLYNOMIAL_H
#define POLYNOMIAL_POLYNOMIAL_H

#include <string>
#include "../node/node.h"

class polynomial {
public:
    polynomial();

    ~polynomial();

    explicit polynomial(std::string s);

    polynomial(const polynomial &pol);

    void insert_back(node *&e);

    void insert_back(const polynomial& pol);

    void remove(node *&it);

    void polynomial_sort();

    void normalize();

    int64_t get_value_in_point(std::vector<int64_t> &vars);

    polynomial get_derivative(int n, char x);

    polynomial operator+(const polynomial &pol);

    polynomial operator*(const polynomial &pol);

    bool operator==(const polynomial &pol);

    std::vector<int64_t> get_roots();

    std::string to_string();

    //friend void mergeSort(node *&L, int sz);

    //friend node *merge(node *&L, node *&r);

    //friend std::ostream &operator<<(std::ostream &os, const polynomial &p);

    void set_next(polynomial *&pol) {
        next = pol;
    }

    void set_next_null() {
        next = nullptr;
    }

    void set_prev(polynomial *&pol) {
        prev = pol;
    }

    void set_prev_null() {
        prev = nullptr;
    }

    polynomial *get_next() {
        return next;
    }

    polynomial *get_prev() {
        return prev;
    }

    int size() {
        return sz;
    }

private:
    node *head = nullptr;
    node *tail = nullptr;
    polynomial *next = nullptr;
    polynomial *prev = nullptr;
    int sz = 0;
};


#endif //POLYNOMIAL_POLYNOMIAL_H
