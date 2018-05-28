# test_import
```
sh run.sh
```
```
OUTPUT like :
Sending build context to Docker daemon  180.7kB
Step 1/5 : FROM python:2.7.12
 ---> 0900c636e10d
Step 2/5 : ADD . .
 ---> f621d9af0227
Step 3/5 : ADD . /work
 ---> c9ff42cd8296
Step 4/5 : RUN pip install -r requirements.txt --no-cache-dir
 ---> Running in 38f9d7bb9bce
Collecting pycrypto==2.6.1 (from -r requirements.txt (line 1))
  Downloading https://files.pythonhosted.org/packages/60/db/645aa9af249f059cc3a368b118de33889219e0362141e75d4eaf6f80f163/pycrypto-2.6.1.tar.gz (446kB)
Installing collected packages: pycrypto
  Running setup.py install for pycrypto: started
    Running setup.py install for pycrypto: finished with status 'done'
Successfully installed pycrypto-2.6.1
You are using pip version 9.0.1, however version 10.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
Removing intermediate container 38f9d7bb9bce
 ---> ced5b82e1007
Step 5/5 : CMD sh entrypoint.sh
 ---> Running in f54c0fa08f2c
Removing intermediate container f54c0fa08f2c
 ---> 1f56824da116
Successfully built 1f56824da116
Successfully tagged test_import:latest
======================================================

 1 test.py :  just run = succ
ret :  5945a6411169f7922f5373fc7709aa7f

 2 test.py : ADD project in docker dir & run = succ
ret :  5945a6411169f7922f5373fc7709aa7f

 3 test.py : in mount dir & run  = fail
Traceback (most recent call last):
  File "test.py", line 1, in <module>
    from utils.crypto import decode_user_name
  File "/work2/test_import/utils/crypto.py", line 1, in <module>
    from Crypto.Cipher import AES
  File "/work2/test_import/utils/Crypto.py", line 1, in <module>
    from Crypto.Cipher import AES
ImportError: No module named Cipher

 4 test.py : cp mount dir to docker dir & run = succ
ret :  5945a6411169f7922f5373fc7709aa7f

 5 test2.py : in mount dir & import crypto2 instead crypto because crypto is conflict with pycrypto = succ
ret :  5945a6411169f7922f5373fc7709aa7f
```
