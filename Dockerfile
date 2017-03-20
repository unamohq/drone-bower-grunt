# Pull node as a base image.
FROM node:7.2.0-alpine

# Environment variables.
ENV PHANTOM_VERSION phantomjs-2.1.1-linux-x86_64

# Instalation of PhantomJS
RUN curl -L -s https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_VERSION.tar.bz2 | tar xj && \
    mv $PHANTOM_VERSION/bin/phantomjs /usr/local/bin/ && rm -rf $PHANTOM_VERSION/

# Install Bower & Grunt
RUN npm install -g bower grunt grunt-cli
