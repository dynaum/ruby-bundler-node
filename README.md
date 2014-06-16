## Docker Ruby + Bundler + Nodejs


This repository contains **Dockerfile** of Ruby, bundle and nodejs for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/nodejs/) published to the public [Docker Registry](https://index.docker.io/).


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dynaum/ruby-bundler-node/) from public [Docker Registry](https://index.docker.io/): `docker pull dynaum/ruby-bundler-node`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dynaum/ruby-bundler-node" github.com/dynaum/ruby-bundler-node`)


### Usage

    docker run -it --rm dynaum/ruby-bundler-node
