#!/bin/bash

set -e

# Check if .env file exists
if [ ! -f ".env" ]; then
  echo "Error: Create .env file with OPENAI_API_KEY=your_actual_api_key_here"
  exit 1
fi

# how to provide .env file as param vv
docker run -it --rm -p 8888:8888 \
  -v "${PWD}/work":/home/jovyan/ \
  --env-file .env \
  --user root \
  -e GRANT_SUDO=yes \
  quay.io/jupyter/datascience-notebook:2025-03-14
