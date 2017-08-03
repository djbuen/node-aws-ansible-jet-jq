FROM node:5

RUN apt-get update && apt-get install awscli -y
