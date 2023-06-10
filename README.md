# [x86_64] tcpdump-static

This repository contains a Dockerfile and Makefile to build a statically compiled `tcpdump` binary for the x86_64 architecture using Docker.

## Prerequisites

- Docker: Make sure you have Docker installed on your system. If you're using an Apple M1 chip, ensure that you have installed Docker Desktop for Apple M1 and enabled the "Use the new Virtualization framework" option in Docker Desktop's settings.

## Building the tcpdump Binary

Alternatively, you can use the provided Makefile to build the Docker image and run the container:

1. Build the Docker image and run the container:

```
make
```

2. Clean up the `x86_64` directory:

```
make clean
```

This will build the Docker image, run the container, and copy the statically compiled `tcpdump` binary to the `output` directory.
