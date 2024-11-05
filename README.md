
# pth-toolkit Docker Image

## Build and Push

build the image

```sh
docker buildx build --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') --tag nechry/pth-toolkit:latest .
```

push to docker hub

```sh
docker push nechry/pth-toolkit:latest
```

## Repository Overview

This repository contains a set of tools for performing pass-the-hash attacks using Docker.

The toolkit includes the following tools:
- pth-curl
- pth-net
- pth-rpcclient
- pth-smbclient
- pth-smbget
- pth-sqsh
- pth-winexe
- pth-wmic
- pth-wmis

To use the `pth-toolkit`, you can run the following command:

```sh
pth-toolkit() { docker run --rm -it --network host nechry/pth-toolkit:latest "$@"; }
```

the network is configured in host mode, this option makes the Docker container use the host’s network stack directly, rather than an isolated Docker network.
Useful for direct access to interfaces like tun0 for usage with a VPN.

Example usage:

```sh
pth-toolkit pth-net rpc password --help
```

see more https://www.kali.org/tools/passing-the-hash/