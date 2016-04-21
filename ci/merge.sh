#!/bin/sh

set -ex

(
  cd amqp_client
  git fetch origin/stable
  git checkout stable
  cd -
  git rebase stable
  make DEPS_DIR="$PWD/.." tests
)
