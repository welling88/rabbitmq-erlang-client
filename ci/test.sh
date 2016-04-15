#!/bin/sh

set -ex

(
  cd rabbitmq-erlang-client
  make dep_rabbit_common="cp ../rabbit_common" tests
)
