#!/bin/bash
if [ $# -ne 1 ]; then
  echo "usage: $0 <container name>"
  exit 1
fi
echo "lsof might not give any output"
docker run --net="container:$1" vls-lsof:20250823_065834_1.0.0 -nP 
