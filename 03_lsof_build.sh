#!/bin/bash
date
export BUILD_DATE=$(date -u +"%Y%m%d_%H%M%S")
export BUILD_VERSION="1.0.0"
env | grep BUILD
docker build --build-arg BUILD_DATE="$BUILD_DATE" --build-arg BUILD_VERSION="$BUILD_VERSION" -t vls-lsof:${BUILD_DATE}_${BUILD_VERSION} -f Dockerfile.lsof .
date

