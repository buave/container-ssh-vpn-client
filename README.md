# ssh-vpn-client

This project provides a shell with SSH connected to a VPN. This avoids connecting the host entirely to the VPN.

## Usage

### Prerequisites

- Install [Docker](https://docs.docker.com/engine/install/)

### Precompiled image

Just run the following command and adjust the arguments according to your preferences and needs.

```bash
docker run \
	--rm \
	-it \
	--cap-add=NET_ADMIN \
	-v ~/.wg/athena.conf:/etc/wireguard/wg0.conf \
	ghcr.io/buave/container-ssh-vpn-client:latest
```
Change the path to your WireGuard configuration.

You can add volumes for ssh keys or ssh configuration to facilitate connections.

---

## Build
If you want to build the image yourself

```bash
docker build . -t vpn-ssh-client
```
