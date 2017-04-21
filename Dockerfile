# Pull node as a base image.
FROM node:7.7.3

# Installing packages necessary to run SlimerJS.
RUN apt-get update && \
    apt-get install libc6 libstdc++6 libgcc1 libgtk2.0-0 libasound2 libxrender1 libdbus-glib-1-2 -y

# Installing Git and Java 8.
RUN apt-get update && \
    apt-get install git-core default-jdk -y


# Installing Bower and Grunt.
RUN npm install -g git bower grunt grunt-cli