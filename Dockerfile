FROM ubuntu:22.04

RUN mkdir /root/.ssh/

RUN apt update && apt install -y \
    wireguard \
    iproute2 \
    iputils-ping \
    openssh-client \
    curl \
    openresolv \
    vim \
    && apt clean

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
