#!/bin/bash

# Set default values
DEFAULT_IMAGE="ubuntu:latest"
DEFAULT_WORK_DIR="/app"
DEFAULT_ZIP_NAME="app-files.zip"

# Prompt for Docker image name with default (user can press Enter to skip)
echo "Enter Docker image name [${DEFAULT_IMAGE}]: "
read IMAGE
IMAGE=${IMAGE:-$DEFAULT_IMAGE}

# Prompt for working directory with default (user can press Enter to skip)
echo "Enter working directory in container [${DEFAULT_WORK_DIR}]: "
read WORK_DIR
WORK_DIR=${WORK_DIR:-$DEFAULT_WORK_DIR}

# Prompt for zip file name with default (user can press Enter to skip)
echo "Enter output zip file name [${DEFAULT_ZIP_NAME}]: "
read ZIP_NAME
ZIP_NAME=${ZIP_NAME:-$DEFAULT_ZIP_NAME}

# Pull the Docker image
echo "Pulling Docker image: $IMAGE"
docker pull "$IMAGE"

# Run the Docker container in detached mode
CONTAINER_ID=$(docker run -d -it "$IMAGE" bash)
echo "Started container with ID: $CONTAINER_ID"

# Execute commands in the container
docker exec "$CONTAINER_ID" bash -c "
  ls &&
  cd $WORK_DIR &&
  apt update && apt install -y zip &&
  zip -r /tmp/$ZIP_NAME *
"

# Copy the zip file from the container
echo "Copying zip file from container..."
docker cp "$CONTAINER_ID:/tmp/$ZIP_NAME" "$ZIP_NAME"

# Stop and remove the container
docker stop "$CONTAINER_ID"
docker rm "$CONTAINER_ID"

# Start a local HTTP server
echo "Starting HTTP server on port 8080..."
python3 -m http.server 8080
