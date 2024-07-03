#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Change directory to the project's backend folder.
cd /home/wasimali/inc42/backend

# Fetch all updates from the remote repository.
git fetch --all

# Checkout to the branch or commit specified by the first argument passed to the script.
git checkout $1

# Pull the latest changes from the remote repository.
git pull

# Installing dependencies
/usr/local/go/bin/go mod tidy

# Buliding go backend
/usr/local/go/bin/go build -o myapp-backend-api main.go

# Move the newly built binary to /usr/local/bin for easy execution.
sudo mv myapp-backend-api /usr/local/bin/

# Restart the backend service to apply the new binary.
sudo systemctl restart my-app-backend.service

# Check the status of the backend service to ensure it restarted correctly.
sudo systemctl status my-app-backend.service

# Output "SUCCESS" to indicate that the script completed successfully.
echo "SUCCESS"
