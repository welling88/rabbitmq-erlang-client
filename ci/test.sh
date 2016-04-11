#!/bin/bash

set -ex

apt-get update
apt-get install -y --no-install-recommends \
  debhelper \
  python-simplejson \
  xmlto \
  xsltproc \
  zip \
  rsync


pushd rabbitmq-erlang-client
  make tests
popd
