FROM dockcross/linux-x64:latest

WORKDIR /build
RUN apt-get update && \
    apt-get install -y \
    libpcap-dev \
    flex \
    bison \
    git \
    autoconf \
    automake \
    libtool

RUN git clone https://github.com/the-tcpdump-group/tcpdump.git

WORKDIR /build/tcpdump
RUN git submodule update --init --recursive && \
    autoreconf -ivf && \
    ./configure --prefix=/usr/x86_64-linux-gnu --disable-shared --enable-static --host=x86_64-linux-gnu && \
    make && \
    make install

VOLUME /output
CMD ["cp", "/usr/x86_64-linux-gnu/bin/tcpdump", "/output/tcpdump"]
