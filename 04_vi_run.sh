#!/bin/bash
if [ $# -ne 2 ]; then
  echo "usage: $0 <container name> <filename>"
  exit 1
fi
docker run -it --net="container:$1" vls-vi:20250823_072110_1.0.0 $2 
