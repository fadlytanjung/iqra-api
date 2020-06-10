#Download base image ubuntu 18.04
# FROM ubuntu:18.04
# RUN apt-get update && apt-get install -y python-pip

FROM python:2.7
# Install app dependencies
WORKDIR /home/ubuntu/iqra-api

RUN pip install -r requirements.txt

RUN python createIndex.py

EXPOSE 8080
CMD [ "python", "app.py" ]