cd /ddisasm/gtirb
git checkout -b d3 D3.0
cmake . -Bbuild
cd build
make install -j2

cd /ddisasm/gtirb-pprinter 
git checkout -b d3 D3.0 
cmake . -Bbuild 
cd build 
make install -j2

cd /ddisasm 
cmake -DLIEF_ROOT=/usr . -Bbuild 
cd build 
make install -j2

ddisasm --help
