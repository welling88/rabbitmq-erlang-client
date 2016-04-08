#!/bin/bash

set -ex

apt-get install libxslt

pushd rabbitmq-erlang-client
  make tests
popd
