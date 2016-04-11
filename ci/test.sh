#!/bin/sh

set -ex

apt-get update
apt-get install -y --no-install-recommends \
  debhelper \
  erlang-dev \
  erlang-src \
  python-simplejson \
  xmlto \
  xsltproc \
  erlang-nox \
  zip \
  rsync


pushd rabbitmq-erlang-client
  make tests
popd
