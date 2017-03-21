# Pull node as a base image.
FROM node:7.7.3

# Installing Git.
RUN apt-get update && \
    apt-get install git-core -f
# Installing Bower and Grunt.
RUN npm install -g git bower grunt grunt-cli

RUN echo $PATH`
RUN which git
