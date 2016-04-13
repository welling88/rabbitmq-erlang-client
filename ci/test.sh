#!/bin/bash

set -ex

pushd rabbitmq-erlang-client
  echo "make some noise"
  make dep_rabbit_common="cp ../rabbit_common" tests
popd
