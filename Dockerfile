FROM python:2.7.9
MAINTAINER silverbirder <silverbirder@gmail.com>

ENV IP_ADDRESS 192.168.3.17
ENV MESSAGE "HELLO"

WORKDIR /app
COPY main.js package.json services.sh ./
RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
    echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
    curl -sL https://deb.nodesource.com/setup_8.x | bash - &&\
    apt-get update -qq &&\
    apt-get install -y nodejs libnss-mdns libavahi-compat-libdnssd-dev avahi-daemon &&\
    npm i &&\
    chmod 744 services.sh &&\
    # https://github.com/noelportugal/google-home-notifier
    sed -i.org 's/getaddrinfo()/getaddrinfo({families:[4]})/g' node_modules/mdns/lib/browser.js &&\
    # https://github.com/zlargon/google-tts/issues/22

CMD ["/app/services.sh"]