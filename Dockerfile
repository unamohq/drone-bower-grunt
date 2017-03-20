# Pull node as a base image.
FROM node:7.2.0-alpine

# Installing Git, Bower and Grunt.
RUN apk add --no-cache git && \
    npm install -g bower grunt grunt-cli phantomjs
