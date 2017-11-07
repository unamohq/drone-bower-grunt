FROM node:9.0.0

RUN apt-get -y update

RUN apt-get install -y iceweasel

RUN apt-get install -y git-core default-jdk

RUN yarn install -g bower grunt grunt-cli
