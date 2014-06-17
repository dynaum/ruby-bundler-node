# Pull base image.
FROM dockerfile/ruby

RUN echo "gem: --no-rdoc --no-ri" > ~/.gemrc && \
    gem install bundler

# Install Node.js
RUN \
  apt-get install python-software-properties && \
  apt-add-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install nodejs && \

