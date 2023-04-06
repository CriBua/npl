#include <iostream>
#include <bitset>

union Data{
    unsigned short n;
    uint8_t v[2];
};

int main(){

    Data num = {.n=42};

    auto first = static_cast<std::bitset<8>>(num.v[0]);
    auto second = static_cast<std::bitset<8>>(num.v[1]);

    std:: cout<< "First byte: "<<first<<std::endl;
    std:: cout<< "Second byte: "<<second<<std::endl;

    return 0;
}