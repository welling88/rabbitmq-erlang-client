#!/bin/sh

set -ex

(
  cd amqp_client
  make V=2 DEPS_DIR="$PWD/.." tests
)
