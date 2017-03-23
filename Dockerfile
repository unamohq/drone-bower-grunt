# Pull node as a base image.
FROM node:7.7.3

# Installing Git and Java 8.
RUN apt-get update && \
    apt-get install git-core default-jdk -y


# Installing Bower and Grunt.
RUN npm install -g git bower grunt grunt-cli