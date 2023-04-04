#include <iostream>
#include <sys/socket.h>
#include "socket.hpp"
#include "sockaddress.hpp"

// server che fa eco della richiesta

int main() {

    npl:: socket<AF_UNIX, SOCK_STREAM> sock;
    std::string sockname = "/tmp/pippo";

    npl:: sockaddress<AF_UNIX> srvAddr(sockname);

    sock.bind(srvAddr);
    sock.listen();
    auto [connected, cltAddr] = sock.accept();
    
    std:: cout<<"Message recived from: "<<cltAddr.name()<<std::endl;

    npl:: buffer buf = connected.read(80);

    std::cout<<std::string(buf.begin(),buf.end())<<std::endl;

    connected.write(buf);

    sock.close();

    return 0;
}
