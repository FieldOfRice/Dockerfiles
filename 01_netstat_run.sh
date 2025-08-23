#!/bin/bash
if [ $# -ne 1 ]; then
  echo "usage: $0 <container name>"
  exit 1
fi
docker run --net="container:$1" vls-netstat:20250823_064630_1.0.0 -a
