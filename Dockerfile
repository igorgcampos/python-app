# syntax=docker/dockerfile:1

# base python image for custom image
FROM python:3.9.13-slim-buster

# create working directory and install pip dependencies
WORKDIR /hello-py
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# copy python project files from local to /hello-py image working directory
COPY . .

#Expose port 5000
EXPOSE 5000

# run the flask server  
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]