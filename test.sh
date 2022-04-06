echo "pre-commit"
./pre_libxml2/xmllint ./crash.xml

echo "fix-commit"
./fix_libxml2/xmllint ./crash.xml


echo "#Test Libxml2"

multiple_main="../../bin/main"
PI_dir="./input"
PO_dir="../../bin/result"
target_program="./pre_libxml2/xmllint"

# EXECUTE
ASAN_OPTIONS=halt_on_error=1 ../bin/main $PI_dir $PO_dir $target_program -bcov |& tee result.txt
