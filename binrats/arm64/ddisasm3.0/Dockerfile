FROM binrats/ddisasm-base:arm64-latest

WORKDIR /binrats

RUN git clone https://github.com/binrats/gtirb
RUN cd /binrats/gtirb && git checkout -b d3 D3.0 && cmake . -Bbuild && cd build && make install -j32

RUN git clone https://github.com/binrats/gtirb-pprinter
RUN cd /binrats/gtirb-pprinter && git checkout -b d3 D3.0 && cmake . -Bbuild && cd build && make install -j32

RUN git clone https://github.com/binrats/ddisasm

RUN cd /binrats/ddisasm && git checkout -b d3 D3.0 && cmake -DLIEF_ROOT=/usr . -Bbuild && cd build && make install -j1

# Make sure the new libs are found
RUN ldconfig
