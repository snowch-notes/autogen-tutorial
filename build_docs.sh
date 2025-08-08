#!/bin/bash

# Build the Quarto project
echo "Building Quarto project..."
quarto render

if [ $? -eq 0 ]; then
  echo "Quarto project built successfully."
else
  echo "Error: Quarto project build failed."
  exit 1
fi
