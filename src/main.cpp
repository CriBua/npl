#include <iostream>
#include "socket.hpp"
#include "sockaddress.hpp"

int main(int, char**) {
    std::cout << "Hello, world!\n";
    npl::socket<AF_UNIX, SOCK_DGRAM> sock;

    npl::sockaddress<AF_INET> aaa("8.3.4.5", 43);
    std:: cout<<" "<<aaa.host()<<std::endl;
    //sock.bind()
}
