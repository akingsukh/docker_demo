FROM gliderlabs/alpine:latest

MAINTAINER Aman Singh akingsukh@gmail.com

ADD . /pythonapp

WORKDIR /pythonapp

RUN apk-install python python-dev py-pip && pip install -r requirements.txt

CMD ["python", "app.py"]