#!/bin/bash
set -e   # to exit script if any step fails
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
cd /home/wasimali/inc42/app-frontend-react
git checkout .
git fetch --all
git checkout main
git pull
echo "START BUILDING"
npm install
npm run build
#sudo docker images | grep "wasimalii/inc42" | awk '{print $2,$3}' | cut -d " " -f 2 | xargs docker rmi
cd /home/wasimali/inc42
sudo docker build -t wasimalii/inc42:$1 -f docker/Dockerfile_frontend .
sudo docker push wasimalii/inc42:$1
