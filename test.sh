echo "pre-commit"
./pre_libxml2/xmllint ./test2.xml

echo "fix-commit"
./fix_libxml2/xmllint ./test2.xml
