# Pull node as a base image.
FROM node:7.2.0-alpine

# Environment variables.
ENV PHANTOM_VERSION phantomjs-2.1.1-linux-x86_64

# Install Bower & Grunt
RUN npm install -g bower grunt grunt-cli phantomjs
