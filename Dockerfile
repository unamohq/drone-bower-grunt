# Pull node as a base image.
FROM node:7.2.0-alpine

# Installing Git, Bower and Grunt.
RUN apk update && \
    apk add --no-cache git && \
    apk add --no-cache ruby ruby-rdoc ruby-irb ruby-dev && \
    npm install -g bower grunt grunt-cli phantomjs

RUN gem install bundler