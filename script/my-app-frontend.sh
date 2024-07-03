#!/bin/bash
set -e   # to exit script if any step fails 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
cd /root/test/inc42/app-frontend-react
git checkout .
git fetch --all
git checkout $1
git pull
echo "START BUILDING"
npm install
npm run build
pm2 restart pm2.ecosystem.config.js
echo "SUCCESS"
