#include <iostream>
#include <sys/socket.h>
#include "socket.hpp"
#include "sockaddress.hpp"

// client invia un messaggio e aspetta la risposta

int main() {

    //client socket unix stream

    npl:: socket<AF_UNIX, SOCK_STREAM> sock;                                //creo socket stream unix
    
    std::string sockname = "/tmp/pippo";                                    //indirizzo file condiviso
    npl:: sockaddress<AF_UNIX> srvAddr(sockname);                           //creo indirizzo server socket

    sock.connect(srvAddr);                                           //mi connetto a server socket

    std::string msg = "Welcome from NPL class";

    sock.write(npl:: buffer(msg.begin(),msg.end()));        //invio messaggio

    std::cout<<"Response from server: "<<std::endl;

    npl::buffer buf = sock.read(80);                                      //memorizzo 80 caratteri del messaggio ricevuto in buf

    std::cout<<std::string(buf.begin(),buf.end())<<std::endl;

/*
    //client con socket unix datagramma
    
    npl:: socket<AF_UNIX, SOCK_DGRAM> sock;                                 //creo socket datagramma
    
    std::string sockname = "/tmp/pippo";
    npl:: sockaddress<AF_UNIX> srvAddr(sockname);                           //creo indirizzo server
    npl:: sockaddress<AF_UNIX> cltAddr(sockname+std::to_string(getpid()));  //creo indirizzo client

    sock.bind(cltAddr);                                                     //applico al socket inirizzo client

    std::string msg = "Welcome from NPL class";

    sock.sendto(npl:: buffer(msg.begin(),msg.end()),srvAddr);               //invio a indirizzo server messaggio
    std::cout<<"Response from server: "<<std::endl;

    auto [buf,server ]=  sock.recvfrom(80);                                 //prelevo 80 caratteri messaggio ricevuto in buf da sockaddress server
    std::cout<<std::string(buf.begin(),buf.end())<<std::endl;
*/


    sock.close();
    
    return 0;
}