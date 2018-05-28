FROM python:2.7.12
ADD . .
ADD . /work2
RUN pip install -r requirements.txt --no-cache-dir
CMD sh entrypoint.sh
