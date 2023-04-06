#include <iostream>
#include "socket.hpp"
#include <sockaddress.hpp>
#include <string>
#include <sys/socket.h>
#include <unistd.h>

int main() {
/*  //client con socket datagramma ipv4

    npl::socket<AF_INET, SOCK_DGRAM> sock;                                     //creo socket datagramma

    npl::sockaddress<AF_INET> srvAddr("127.0.0.1",10000);                      //indico indirizzo ipv4 e porta destinatario

    std::string msg = "Welcome from NPL class";                                //messaggio da inviare
    
    sock.sendto(npl::buffer(msg.begin(),msg.end()), srvAddr);                  //invio messaggio

    auto [buf, server] = sock.recvfrom(80);                                    //prelevo 80 caratteri e li salvo in buf, in server ho sockaddress di chi ho ricevuto messaggio

    std::cout << "Response from server: " << server.host() << std::endl;
    std::cout << std::string(buf.begin(),buf.end()) << std::endl; 
*/

    //client con socket stream ipv4

    npl::socket<AF_INET, SOCK_STREAM> sock;                                    //creo socket stream

    npl::sockaddress<AF_INET> srvAddr("127.0.0.1",10000);           //indico indirizzo ipv4 e porta del destinatario

    sock.connect(srvAddr);                                             //mi connetto al socket destinatario

    std::string msg = "Welcome from NPL class";                                //messaggio da inviare
    
    sock.write(npl::buffer(msg.begin(),msg.end()));           //invio un messaggio

    npl::buffer buf = sock.read(80);                                        //leggo eventuali messaggi ricevuti 80 caratteri

    std::cout << "Response from server: " << srvAddr.host() << std::endl;
    std::cout << std::string(buf.begin(),buf.end()) << std::endl; 




    sock.close();


    return 0;
}