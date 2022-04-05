cd pre_libxml2
make clean
./autogen.sh
CC='clang' CFLAGS='-O3 -g -fsanitize=address -fsanitize-coverage=trace-pc-guard' ./configure --with-icu
make

cd ../fix_libxml2
make clean
./autogen.sh
CC='clang' CFLAGS='-O3 -g -fsanitize=address -fsanitize-coverage=trace-pc-guard' ./configure --with-icu
make

cd ..
