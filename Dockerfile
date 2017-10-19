FROM node:6.2.2

RUN apt-get update && apt-get install awscli -y
RUN yum install epel-release -y && yum install ansible -y
RUN curl -SLO "https://s3.amazonaws.com/codeship-jet-releases/1.19.3/jet-linux_amd64_1.19.3.tar.gz"
RUN tar -xaC /usr/local/bin -f jet-linux_amd64_1.19.3.tar.gz
RUN chmod +x /usr/local/bin/jet
RUN wget http://stedolan.github.io/jq/download/linux64/jq
RUN chmod +x ./jq
RUN cp jq /usr/bin
