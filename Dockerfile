# Pull base image.
FROM ubuntu:14.04

# Ignore APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

# dependencies
RUN \
  apt-get update && \
  apt-get -y install \
  build-essential \
  curl \
  git-core \
  python-software-properties \
  libcurl4-openssl-dev \
  libc6-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev \
  phantomjs \
  vim

# Ruby install
RUN \
  curl --progress http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz | tar xz && \
  cd ruby-2.1.2 && \
  ./configure --disable-install-doc && \
  make && make install && \
  cd .. && rm -rf ruby-2.1.2* && \
  echo 'gem: --no-document' > /usr/local/etc/gemrc && \
  gem install bundler

# Install Node.js
RUN \
  apt-get install -y nodejs-legacy npm && \
  npm config set prefix /azk/npm && \
  npm install -g grunt-cli

# Adding bin folders on PATH
RUN \
  echo "export PATH=$HOME/bin:/azk/npm/bin:$PATH" > .bashrc

CMD "bash"
