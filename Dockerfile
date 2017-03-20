# Pull node as a base image.
FROM node:7.2.0-alpine

# Installing Git, Ruby, Bower and Grunt.
RUN apk update && \
    apk add --no-cache git && \
    apk add --no-cache cmake build-base libffi-dev && \
    apk add --no-cache ruby ruby-rdoc ruby-irb ruby-dev && \
    npm install -g bower grunt grunt-cli phantomjs

# Installing bundler for Ruby
RUN gem install bundler
# Installing compass for scss
RUN gem install compass