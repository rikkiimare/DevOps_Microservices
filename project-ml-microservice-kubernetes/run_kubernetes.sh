#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub


# Step 1:
# This is your Docker ID/path
dockerpath="app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run basicappdemo \
    --overrides='{ "apiVersion|: "v1"}' \
    --image=$dockerpath \
    --port=80 --labels app=basicappdemo

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward basic_app_demo 8000:80
