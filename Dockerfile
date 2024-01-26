FROM ubuntu:24.04

WORKDIR /usr/src/app

RUN apt update && apt -y upgrade && \
    apt -y install wget xz-utils make gcc flex bison libelf-dev libdw-dev systemtap-sdt-dev libunwind-dev libperl-dev binutils-dev libzstd-dev libcap-dev libnuma-dev \
                   libbabeltrace-dev python-dev-is-python3 libtraceevent-dev pkg-config asciidoc xmlto git && \
    wget "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.9.tar.xz" && \
    tar -xf linux-6.6.9.tar.xz && \
    rm linux-6.6.9.tar.xz && \
    cd linux-6.6.9/tools/perf/ && \
    make -C . && make install && \
    cp perf /usr/local/bin/
