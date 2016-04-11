#!/bin/bash

set -ex

apt-get update
apt-get -y install xsltproc rsync

pushd rabbitmq-erlang-client
  make tests
popd
