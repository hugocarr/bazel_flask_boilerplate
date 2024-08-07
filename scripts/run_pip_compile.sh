#!/usr/bin/env bash
docker build -t local:latest ./
docker run -v $(pwd):/app local:latest bash -c "uv pip compile ./requirements.in > ./requirements.txt"
docker run -v $(pwd):/app local:latest bash -c "uv pip compile ./ci-requirements.in > ./ci-requirements.txt"
