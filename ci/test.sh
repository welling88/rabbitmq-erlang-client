#!/bin/bash

set -ex

apt-get update
apt-get install -y --no-install-recommends \
  debhelper \
  python-simple-json \
  xmlto \
  xsltproc \
  zip \
  rsync


pushd rabbitmq-erlang-client
  make tests
popd
