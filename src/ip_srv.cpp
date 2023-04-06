#include <iostream>
#include "socket.hpp"
#include <sockaddress.hpp>
#include <sys/socket.h>

int main() {
/*
    //server socket ipv4 datagramma
    
    npl::socket<AF_INET, SOCK_DGRAM> sock;                                                          //creo socket datagramma

    npl::sockaddress<AF_INET> srvAddr(10000);                                                       //indico porta socket server

    sock.bind(srvAddr);                                                                             //applico indirizzo e porta al socket

    for(;;) {

         auto [buf, cltAddr] = sock.recvfrom(80);                                                   //prelevo 80 caratteri e li salvo in buf, della richiesta fatta da sockaddress cltAddr
     
         std::cout << "Message received from: " << cltAddr.host() << std::endl;
     
         sock.sendto(buf, cltAddr);                                                                 //invio il messaggio in buf a host con sockaddress cltAddr
     

    }
*/

    //server socket ipv4 stream

    npl::socket<AF_INET, SOCK_STREAM> sock;                                                          //creo socket stream

    npl::sockaddress<AF_INET> srvAddr(10000);                                                  //indico porta ed eventualmente indirizzo del mio server

    sock.bind(srvAddr);                                                                        //applico indirizzo al socket
    sock.listen();                                                                                  //inserisco modalità ascolto il socket

    for(;;) {

         auto [connected, cltAddr] = sock.accept();                   //accetto eventuali connessioni, connected è il socket della comunicazione, cltAddr è sockaddress del client
     
         npl::buffer buf = connected.read(80);                                                   //leggo 80 caratteri dal socket in cui ho ricevuto connessione
     
         std::cout << "Message received from: " << cltAddr.host() << std::endl;
         std::cout << "Message : " << std::string(buf.begin(),buf.end())<< std::endl;
     
         connected.write(buf);                                                                     //invio messaggio contenuto in buf al client
        
    }


    sock.close();
    return 0;
}