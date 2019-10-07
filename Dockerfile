FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y libssl-dev automake make gcc wget unzip
RUN wget https://cefore.net/dlfile.php?file=cefore-0.8.1.zip && \
    unzip cefore-0.8.1.zip
RUN cd cefore-0.8.1 && \
    autoconf &&\
    aclocal &&\
    automake && \
    ./configure --enable-csmgr && \
    make && \
    sudo meke install && \
    sudo ldconfig
