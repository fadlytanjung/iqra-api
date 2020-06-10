FROM python:2.7

# Install app dependencies
RUN apt-get update && apt-get install -y python-pip
RUN pip install -r requirements.txt

RUN python createIndex.py

EXPOSE 8080
CMD [ "python", "app.py" ]