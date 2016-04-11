#!/bin/bash

set -ex

apt-get update
apt-get install -y --no-install-recommends \
  bash \
  debhelper \
  erlang-nox \
  python-dev \
  python-simplejson \
  xmlto \
  xsltproc \
  erlang-nox \
  zip \
  rsync \
  git


pushd rabbitmq-erlang-client
  make dep_rabbit_common="cp ../rabbit_common" tests
popd
