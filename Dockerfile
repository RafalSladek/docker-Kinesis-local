FROM ubuntu:14.04
MAINTAINER Dealer-Lead-Management Team <#AS24-Dealer-Lead-Management-IT-ds@scout24.com>>

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get -y install nodejs
RUN apt-get -y install build-essential
RUN npm install -g kinesalite

EXPOSE 4567

ENTRYPOINT ["/usr/bin/kinesalite"]

CMD ["--help"]
