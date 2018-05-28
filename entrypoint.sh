#!/bin/bash
echo "=================="
echo "first test :"
python test.py

echo "second test : "
cd /work
python test.py

echo "third test : "
cd /work2/test_import
python test.py

echo "fourth test : "
mkdir -p /work3
cp -r /work2/test_import /work3
cd /work3/test_import
python test.py

echo "fifth test : "
cd /work2/test_import
python test2.py
