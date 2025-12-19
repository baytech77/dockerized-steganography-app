# pull base image
FROM python:3.13


# set environment variables
ENV PUTHONDONTWRITEBYTECODE 1
ENV PYHTONUNBUFFERED 1


# set work directory
WORKDIR /stego

# inatall npm
# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# install dependencies
COPY Pipfile.lock /stego/
RUN pip install pipenv && pipenv install --system


# copy project
COPY . /stego/