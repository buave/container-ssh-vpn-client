FROM ubuntu:22.04

RUN useradd bov -m -s /bin/bash

RUN echo "vpn-ssh" > /etc/hostname

RUN apt update && apt install -y \
    wireguard \
    iproute2 \
    iputils-ping \
    openssh-client \
    curl \
    openresolv \
    && apt clean

COPY wg0.conf /etc/wireguard/wg0.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
