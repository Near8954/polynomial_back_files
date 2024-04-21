#include "polynomial.h"

int64_t power(int64_t x, int64_t y) {
    if (y == 0)
        return 1;
    else if (y % 2 == 0)
        return power(x, y / 2) * power(x, y / 2);
    else
        return x * power(x, y / 2) * power(x, y / 2);
}

node *merge(node *l, node *r) {
    if (l == nullptr) return r;
    if (r == nullptr) return l;
    node *cur;
    if (*l > *r) {
        cur = l;
        l = l->next;
    } else {
        cur = r;
        r = r->next;
    }
    node *beg = cur;
    while (l != nullptr && r != nullptr) {
        if (*l > *r) {
            cur->next = l;
            cur->next->prev = cur;
            cur = cur->next;
            l = l->next;
        } else {
            cur->next = r;
            cur->next->prev = cur;
            cur = cur->next;
            r = r->next;
        }
    }
    if (l != nullptr) {
        cur->next = l;
        cur->next->prev = cur;
    }
    if (r != nullptr) {
        cur->next = r;
        cur->next->prev = cur;
    }
    return beg;
}

void mrgsort(node *&l, int n) {
    if (n <= 1) return;
    int m = n / 2;
    node *cur = l;
    for (int i = 0; i < m; ++i) {
        cur = cur->next;
    }
    node *r = cur;
    cur->prev->next = nullptr;
    cur->prev = nullptr;
    mrgsort(l, m);
    mrgsort(r, n - m);
    l = merge(l, r);
}


polynomial::polynomial() {
    head = nullptr;
    tail = nullptr;
}

polynomial::~polynomial() {
//    for (auto l = this->head; l != nullptr; l = l->next) {
//        auto curr = l;
//        this->remove(curr);
//    }
    node *curr = this->head;
    while (curr != nullptr) {
        node *next = curr->next;
        this->remove(curr);
        curr = next;
    }
}


polynomial::polynomial(std::string s) {
    std::string cp = s;
    std::string curr;
    for (int i = 0; i < cp.size(); ++i) {
        if (s[i] == '-' || s[i] == '+' && !curr.empty()) {
            node *nd = new node(curr);
            insert_back(nd);
            curr.clear();
        }
        curr += s[i];
    }
    if (!curr.empty()) {
        node *nd = new node(curr);
        insert_back(nd);
        curr.clear();
    }
}

polynomial::polynomial(const polynomial &pol) {
    if (pol.head == nullptr) {
        next = nullptr;
        prev = nullptr;
        head = nullptr;
        tail = nullptr;
        sz = 0;
        return;
    } else {
        next = nullptr;
        prev = nullptr;
        sz = 0;
        for (auto el = pol.head; el != nullptr; el = el->next) {
            node *nd = new node(*el);
            nd->next = nullptr;
            nd->prev = nullptr;
            insert_back(nd);
        }
    }
}


void polynomial::insert_back(node *&e) {
    if (tail == nullptr) {
        tail = e;
        head = e;
        ++sz;
        return;
    }
    e->prev = tail;
    tail->next = e;
    tail = e;
    ++sz;
}


void polynomial::insert_back(const polynomial &pol) {
    if (this->tail == nullptr) {}
    this->tail->next = pol.head;
    pol.head->prev = this->tail;
    node *tmp = this->head;
    sz += pol.sz;
    for (; tmp->next != nullptr; tmp = tmp->next) {}
    this->tail = tmp;
}


void polynomial::remove(node *&it) {
    if (it == nullptr) {
        return;
    }
    if (it->prev == nullptr && it->next == nullptr) { // Если вершина одна
        delete it;
        --sz;
        return;
    }
    if (it->prev == nullptr) { // Если вершина - head
        head = it->next;
        head->prev = nullptr;
        --sz;
        delete it;
        return;
    }
    if (it->next == nullptr) { // Если вершина - tail
        tail = it->prev;
        tail->next = nullptr;
        --sz;
        delete it;
        return;
    }
    --sz;
    it->prev->next = it->next; // Если просто вершина с двумя соседями
    it->next->prev = it->prev;
    delete it;
}

void polynomial::polynomial_sort() {
    mrgsort(this->head, sz);
}

void polynomial::normalize() {
    this->polynomial_sort();
    if (this->head == nullptr) {
        return;
    }
    for (auto l = this->head; l->next != nullptr;) {
        node *nxt = l->next;
        if (l->powers == nxt->powers) {
            l->k += nxt->k;
            remove(nxt);
            continue;
        }
        l = l->next;
    }
    for (auto l = head; l != nullptr; l = l->next) {
        if (l->k == 0) {
            l->powers.assign(26, 0);
        }
    }
    sz = 0;
    tail = nullptr;
    for (auto l = head; l != nullptr; l = l->next) {
        tail = l;
        ++sz;
    }
    if (tail != nullptr && head != nullptr && head != tail && tail->k == 0) {
        tail = tail->prev;
        remove(tail->next);
    }
}

int64_t polynomial::get_value_in_point(std::vector<int64_t> &vars) {
    int64_t ans = 0;
    for (auto curr = head; curr != nullptr; curr = curr->next) {
        int64_t tmp = 1;
        for (int i = 0; i < 26; ++i) {
            tmp *= power(vars[i], curr->powers[i]);
        }
        tmp *= curr->k;
        ans += tmp;
    }
    return ans;
}


polynomial polynomial::get_derivative(int n, char x) {
    auto tmp = new polynomial(*this);
    polynomial ans;
    for (int i = 0; i < n; ++i) {
        for (auto curr = tmp->head; curr != nullptr; curr = curr->next) {
            auto nd = new node(curr->get_derivative(x));
            ans.insert_back(nd);
        }
        delete tmp;
        tmp = new polynomial(ans);
        ans = polynomial();
    }
    tmp->normalize();
    return *tmp;
}

polynomial polynomial::operator+(const polynomial &pol) {
    polynomial cp;
    for (auto tmp = pol.head; tmp != nullptr; tmp = tmp->next) {
        auto nd = (new node(*tmp));
        cp.insert_back(nd);
    }
    for (auto tmp = this->head; tmp != nullptr; tmp = tmp->next) {
        auto nd = (new node(*tmp));
        cp.insert_back(nd);
    }
    cp.normalize();
    return cp;
}

polynomial polynomial::operator*(const polynomial &pol) {
    polynomial ans;
    for (auto t1 = head; t1 != nullptr; t1 = t1->next) {
        for (auto t2 = pol.head; t2 != nullptr; t2 = t2->next) {
            auto nd = new node((*t1) * (*t2));
            ans.insert_back(nd);
        }
    }
    return ans;
}

bool polynomial::operator==(const polynomial &pol) {
    if (this->sz != pol.sz) {
        return false;
    }
    for (auto t1 = this->head, t2 = pol.head; t1 != nullptr && t2 != nullptr; t1 = t1->next, t2 = t2->next) {
        if (*t1 != *t2) {
            return false;
        }
    }
    return true;
}

static int64_t sum(std::vector<int64_t> &v) {
    int ans = 0;
    for (auto e: v) {
        ans += e;
    }
    return ans;
}

std::vector<int64_t> polynomial::get_roots() {
    for (auto curr = head; curr != nullptr; curr = curr->next) {
        int cnt = 0;
        for (auto e: curr->powers) {
            if (e) {
                ++cnt;
            }
        }
        if (cnt > 1) {
            throw "Wrong number of vars";
        }
    }
    std::set<int> ans;
    for (int64_t i = -tail->k; i < tail->k; ++i) {
        int tmp = 0;
        if (i != 0 && tail->k % i == 0) {
            for (auto curr = head; curr != nullptr; curr = curr->next) {
                tmp += curr->k * power(i, sum(curr->powers));
            }
            if (tmp == 0) {
                ans.insert(i);
            }
        }
    }
    for (int64_t i = tail->k; i < -tail->k; ++i) {
        int tmp = 0;
        if (i != 0 && tail->k % i == 0) {
            for (auto curr = head; curr != nullptr; curr = curr->next) {
                tmp += curr->k * power(i, sum(curr->powers));
            }
            if (tmp == 0) {
                ans.insert(i);
            }
        }
    }
    if (sum(tail->powers)) {
        ans.insert(0);
    }
    std::vector<int64_t> out;
    for (auto e: ans) {
        out.push_back(e);
    }
    return out;
}


std::string polynomial::to_string() {
    std::string ans;
    for (node *t = this->head; t != nullptr; t = t->next) {
        if (t->k == 0 && t != this->head) {
            ans += "0";
        } else if (t->k > 0 && t != this->head) {
            ans += '+';
            ans += t->to_string();
        } else {
            ans += t->to_string();
        }
    }
    return ans;
}



/*std::ostream &operator<<(std::ostream &os, const polynomial &p) {
    for (node *t = p.head; t != nullptr; t = t->next) {
        if (t->k > 0 && t != p.head) {
            os << '+' << *t;
        } else {
            os << *t;
        }
    }
    return os;
}*/
