#!/bin/bash

set -ex

pushd rabbitmq-erlang-client
  make dep_rabbit_common="cp ../rabbit_common" tests
popd
