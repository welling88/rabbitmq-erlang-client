#!/bin/bash

set -ex

apt-get update
apt-get install -y --fix-missing --no-install-recommends \
  bash \
  debhelper \
  git \
  python-dev \
  python-simplejson \
  rsync \
  xmlto \
  xsltproc \
  zip


pushd rabbitmq-erlang-client
  make dep_rabbit_common="cp ../rabbit_common" tests
popd
