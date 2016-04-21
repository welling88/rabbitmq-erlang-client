#!/bin/sh

set -ex

SCRIPT=$0
SCRIPT_DIR=$(cd $(dirname "$SCRIPT") && pwd)
SRC_DIR=$(cd "$SCRIPT_DIR/.." && pwd)
DEPS_DIR=$(cd "$SRC_DIR/.." && pwd)

case $(uname -s) in
FreeBSD) MAKE=gmake ;;
*)       MAKE=make ;;
esac

ls -l

(
  cd "$SRC_DIR"
  $MAKE dep_ranch="cp /" V=2 DEPS_DIR="$DEPS_DIR" tests
)
