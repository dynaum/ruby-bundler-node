# Pull base image.
FROM dockerfile/ruby

# Install Node.js
RUN \
  apt-get install -y python-software-properties && \
  apt-add-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install -y nodejs && \

