#!/usr/bin/env bash
docker build -t local:latest ./
docker run -v $(pwd):/app local:latest bash -c "pytest ./"
