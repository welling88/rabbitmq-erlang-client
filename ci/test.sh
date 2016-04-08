#!/bin/bash

set -ex

apt-get update
apt-get install xsltproc

pushd rabbitmq-erlang-client
  make tests
  echo "\n\n\n\n"
  cat logs/index.html
  echo "\n\n\n\n"
  cat logs/all_runs.html
popd
