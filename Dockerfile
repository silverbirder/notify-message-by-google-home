FROM python:2.7.9

RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
    echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
    curl -sL https://deb.nodesource.com/setup_8.x | bash - &&\
    apt-get update -qq &&\
    apt-get install -y nodejs git-core libnss-mdns libavahi-compat-libdnssd-dev avahi-daemon avahi-discover &&\
    service dbus start &&\
    service avahi-daemon start &&\
    systemctl enable dbus &&\
    systemctl enable avahi-daemon