#!/bin/bash

set -ex

apt-get update
apt-get install -y --no-install-recommends \
  bash \
  debhelper \
  erlang \
  erlang-dev \
  erlang-src \
  python-simplejson \
  xmlto \
  xsltproc \
  erlang-nox \
  zip \
  rsync \
  git


pushd rabbitmq-erlang-client
  # make erlang-mk
  #make dep_rabbit_common="cp ../rabbit_common" rabbitmq-components-mk
  make dep_rabbit_common="cp ../rabbit_common" tests
popd
