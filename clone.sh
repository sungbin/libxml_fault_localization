git clone https://gitlab.gnome.org/GNOME/libxml2.git

cp -r ./libxml2 ./pre_libxml2
cp -r ./libxml2 ./fix_libxml2

cd pre_libxml2
# pre
git checkout 5ffe2981b7d0547dd957a61ac6e1e3db829748d1 -b pre

cd ../fix_libxml2
# fix
git checkout 8d06ccd47959e3fd10e49ebb7582d73c5fc9f1dd -b fix

cd ..
