# Pull node as a base image.
FROM node:7.7.3-alpine

# Installing Git, Bower and Grunt.
RUN apk update && \
    apk add --no-cache git && \
    npm install -g git bower grunt grunt-cli phantomjs
