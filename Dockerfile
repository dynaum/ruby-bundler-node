FROM centos

RUN rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm &amp;&amp; \
    yum -y groupinstall &quot;Development Tools&quot; &amp;&amp; \
    yum -y install zlib-devel openssl-devel readline-devel ncurses-devel libffi-devel libxml2-devel libxslt-devel libcurl-devel libicu-devel libyaml-devel &amp;&amp; \
    yum clean all

RUN curl --progress http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz | tar xz &amp;&amp; \
    cd ruby-2.1.2 &amp;&amp; \
    ./configure --disable-install-doc &amp;&amp; \
    make &amp;&amp; make install &amp;&amp; \
    cd .. &amp;&amp; rm -rf ruby-2.1.2*

RUN echo &#39;gem: --no-rdoc --no-ri&#39; &gt; ~/.gemrc &amp;&amp; \
    gem install bundler

RUN yum install openssl-devel \
    cd /usr/local/src \
    wget http://nodejs.org/dist/node-latest.tar.gz \
    tar zxvf node-latest.tar.gz \
    cd node-v0.10.29 \
    ./configure \
    make \
    make install \
