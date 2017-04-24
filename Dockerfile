# Pull node as a base image.
FROM node:7.7.3

# Updating packages
RUN apt-get -y update

# Installing Iceweasel (Firefox) for testing
RUN apt-get install -y iceweasel

# Installing Git and Java 8.
RUN apt-get install git-core default-jdk -y

# Installing Bower and Grunt.
RUN npm install -g git bower grunt grunt-cli