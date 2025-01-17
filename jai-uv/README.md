# jai-uv

This was a quick test of importing/using C code inside of Jai. There's a huge ecosystem of robust libraries that I might want to use (including some of my own), and this can be a sticking point in some libraries depending on the exact mechanism they use to generate bindings.

## Instructions (tested on Debian x64)

```bash
git clone https://github.com/libuv/libuv.git

# Build libuv using their instructions
cd libuv
mkdir build
(cd build && cmake ..)
cmake --build build
cd ..

# Build the bindings (libuv-linux.jai)
jai generate.jai

# Build/run the program 
jai main.jai && ./main
```
