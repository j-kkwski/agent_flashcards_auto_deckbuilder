#!/bin/bash
set -e

# Create a deployment package that includes your function code + dependencies
# NOTE: If you use the Layer approach, you do NOT need to install packages here.

rm -rf package
mkdir -p package
cp lambda_function.py package/

# If you want to include dependencies inside the function (not recommended for large deps):
# python3 -m pip install --target ./package -r requirements.txt

cd package
zip -r ../deployment-package.zip .
cd ..
ls -lh deployment-package.zip