#!/bin/bash
if [ $# -ne 1 ]; then
  echo "usage: $0 <container name>"
  exit 1
fi
docker run --net="container:$1" --rm byfcz/tcpflow -p -c
