#!/usr/bin/env bash
docker build --target base -t app:latest ./
docker run -p 8080:8080 app:latest
