#!/bin/bash
if [ $# -ne 1 ]; then
  echo "usage: $0 <container name>"
  exit 1
fi
docker run --net="container:$1" vls-ss:20250823_065347_1.0.0 -an
