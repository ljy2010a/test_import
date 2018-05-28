#!/bin/bash
echo "=================="
echo "first test :"
python test.py
echo "second test : "
cd /work2
python test.py
echo "third test : "
cd /work/test_import
python test.py