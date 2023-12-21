#!/bin/bash

#
# Read the new image tag from the file
# Define the new image tag
NEW_IMAGE_TAG="live-$(cat /home/playground/myagent/_work/14/a/image-tag/imageTag.txt)"

# Specify the path to your Kubernetes deployment YAML file
DEPLOYMENT_FILE="/home/playground/myagent/_work/16/s/deployments/deployment-live.yml"

# Use sed to replace the image tag in the deployment file
sed -i "s|image: mvnrepo.azurecr.io/mvn-spring:.*$|image: mvnrepo.azurecr.io/mvn-spring:${NEW_IMAGE_TAG}|g" $DEPLOYMENT_FILE

echo "Image tag changed to ${NEW_IMAGE_TAG}"
