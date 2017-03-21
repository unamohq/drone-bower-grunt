# Pull node as a base image.
FROM node:7.7.3-alpine

# Installing Git.
RUN apk update && \
    apk add git
# Installing Bower and Grunt.
RUN npm install -g git bower grunt grunt-cli phantomjs
