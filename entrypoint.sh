#!/bin/bash
echo "======================================================"
echo "\n 1 test.py :  just run = succ "
python test.py

echo "\n 2 test.py : ADD project in docker dir & run = succ"
cd /work
python test.py

echo "\n 3 test.py : in mount dir & run  = fail "
cd /work2/test_import
python test.py

echo "\n 4 test.py : cp mount dir to docker dir & run = succ "
mkdir -p /work3
cp -r /work2/test_import /work3
cd /work3/test_import
python test.py

echo "\n 5 test2.py : in mount dir & import crypto2 instead crypto because crypto is conflict with pycrypto = succ "
cd /work2/test_import
python test2.py
