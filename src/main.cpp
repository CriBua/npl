#include <iostream>
#include "socket.hpp"
#include "sockaddress.hpp"

int main(int, char**) {
    std::cout << "Hello, world!\n";
    npl::socket<AF_UNIX, SOCK_DGRAM> sock;
    //sock.bind()
}
