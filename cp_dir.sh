rm -r "./$1_libxml2"
cp -r ./libxml2 "./$1_libxml2"
cd "./$1_libxml2"

git checkout "$2" -b "$1"

#mkdir lpath
#clang -fsanitize=address -c ../trace-pc.c -o ./lpath/trace-pc.o
./autogen.sh

cat ../trace-pc.c >> ./xmllint.c

CC='clang' CFLAGS="-g -O0 -fsanitize=address -fsanitize-coverage=trace-pc-guard" CXXFLAGS="-g -O0 -fsanitize=address" ./configure --prefix=$(pwd)/
make -j10
./xmllint --maxmem 5 ../target.crash
