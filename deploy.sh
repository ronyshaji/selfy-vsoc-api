#!/bin/bash

# Stop and remove containers, networks, volumes, and images created by 'docker-compose'
echo "Stopping and removing containers..."
sudo docker-compose down

# Build the Docker image from the Dockerfile located in the 'src/' directory
echo "Building the Docker image..."
sudo docker build --tag vsoc-api src/

# Start the containers in detached mode (background)
echo "Starting containers in detached mode..."
sudo docker-compose up -d

# Follow the logs for a specific container (use your actual container ID if needed)
echo "Following logs for the container with ID d0c65e7ff34b..."
sudo docker ps

