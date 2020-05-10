FROM binrats/ddisasm-base:latest

WORKDIR /binrats

RUN git clone https://github.com/binrats/gtirb
RUN cd /binrats/gtirb && git checkout -b d3 D3.0 && cmake . -Bbuild && cd build && make install -j2

RUN git clone https://github.com/binrats/gtirb-pprinter
RUN cd /binrats/gtirb-pprinter && cmake . -Bbuild && cd build && make install -j2

RUN git clone https://github.com/binrats/ddisasm

RUN cd /binrats/ddisasm && cmake -DLIEF_ROOT=/usr . -Bbuild && cd build && make install -j2

# Make sure the new libs are found
RUN ldconfig
