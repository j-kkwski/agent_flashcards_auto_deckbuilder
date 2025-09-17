#!/bin/bash
set -e

# Build a layer zip containing the python packages under 'python/'
# Run this in AWS CloudShell (recommended) or an Amazon Linux container.

rm -rf python
mkdir -p python
python3 -m pip install --upgrade pip
python3 -m pip install --target ./python -r requirements.txt

zip -r python-pptx-layer.zip python
ls -lh python-pptx-layer.zip