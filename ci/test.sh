#!/bin/bash

set -ex

pushd rabbitmq-erlang-client
  make tests
popd
