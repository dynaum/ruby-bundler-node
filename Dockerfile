# Pull base image.
FROM dockerfile/ruby

# dependencies
RUN \
  apt-get update && \
  apt-get -y install \
  git-core \
  libcurl3-openssl-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev

# Install Node.js
RUN \
  apt-get install -y python-software-properties && \
  apt-add-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install -y nodejs

