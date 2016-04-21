#!/bin/sh

set -ex

(
  cd amqp_client
  make dep_ranch="cp /ranch" DEPS_DIR="$PWD/.." tests
)
