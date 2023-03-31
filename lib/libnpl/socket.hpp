#ifndef _SOCKET_HPP_
#define _SOCKET_HPP_

#include <cstdint>
#include <system_error>
#include <vector>
#include <sys/socket.h>
#include <unistd.h>

namespace npl{

typedef std::vector<uint8_t> buffer;

template<int F, int type>       //F = AF_INET,AF_INET6,AF_UNIX invece type = SOCK_STREAM,SOCK_DGRAM in base alla tipologia di socket di cui ho bisogno
class socket{

    private:
        int _sockfd;            //descrittore o identificativo socket
    
    public:
        explicit socket(int protocol = 0){
            if((_sockfd = ::socket(F, type, protocol) )== -1){
                throw std::system_error(errno, std::generic_category(), "socket");
            }
        }

        socket(const socket&) = delete;
        socket& operator=(const socket&) = delete;

        socket(socket&& rhs){
            _sockfd = rhs._sockfd;
            rhs._sockfd = -1;
        }

        socket& operator=(socket&& rhs){
            if(*this != rhs){
                this->close();
                _sockfd = rhs._sockfd;
                rhs._sockfd = -1;
            }
            return *this;
        }

        ~socket(){
            if(_sockfd != -1){
                this->close();
            }
        }

        void close(){
            if(_sockfd != -1)
            {
                ::close(_sockfd);
                _sockfd = -1;
            }
        }
};

}


#endif