FROM debian:buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN apt-get install -y bison clang-tidy cmake default-jdk-headless doxygen flex g++ git graphviz libboost-dev libprotobuf-dev libboost-filesystem-dev libboost-program-options-dev libdwarf-dev libtool mcpp pandoc protobuf-compiler python3-pip

WORKDIR /binrats

RUN git clone https://github.com/binrats/souffle
RUN git clone https://github.com/aquynh/capstone
RUN git clone https://git.zephyr-software.com/opensrc/libehp.git
RUN git clone https://github.com/lief-project/LIEF

RUN cd /binrats/souffle && git checkout -b d3 D3.0 && ./bootstrap && ./configure --disable-sqlite && make -j2 && make install
RUN cd /binrats/capstone && make -j2 && make install -j2
RUN cd /binrats/libehp && cmake . -Bbuild && cd build && make install -j2
RUN cd /binrats/LIEF && cmake . -Bbuild && cd build && make install -j2
