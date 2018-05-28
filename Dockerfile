FROM python:2.7.12
ADD . .
RUN pip install -r requirements.txt --no-cache-dir
CMD echo "==================\n first test : " && python test.py && echo "second test : " && cd /work/test_import && python test.py
