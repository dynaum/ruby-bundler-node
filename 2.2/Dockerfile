# Pull base image.
FROM azukiapp/ruby:2.2.5

RUN npm install -g bower grunt-cli

# Phantomjs 1.9.7
RUN \
  cd /usr/local/share && \
  curl -L -O https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 && \
  tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2 && \
  ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs && \
  ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
  ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs


CMD ["bash"]
