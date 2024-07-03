#!/bin/bash
set -e
cd /root/test/inc42/backend 
git fetch --all 
git checkout $1 
git pull 
/usr/local/go/bin/go mod tidy 
/usr/local/go/bin/go build -o myapp-backend-api main.go
mv myapp-backend-api /usr/local/bin/ 
systemctl restart my-app-backend.service 
systemctl status my-app-backend.service 
echo "SUCCESS"
