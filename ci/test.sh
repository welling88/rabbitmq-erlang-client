#!/bin/bash

set -ex

apt-get update
apt-get install xsltproc rsync

pushd rabbitmq-erlang-client
  make tests
popd
