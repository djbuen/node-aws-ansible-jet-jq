FROM node:6.2.2

RUN apt-get update && apt-get install awscli -y
