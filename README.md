# inc42
This repo contains scripts and files used in assignment for inc42.
Frontend (React): https://myapp.trackier.xyz
Backend API (Go): https://myapp.trackier.xyz/api/hello
Jenkins url : https://jenkins.trackier.xyz/
user: wasim
password: wasim


Here are the steps to set up and run the frontend application (MyApp) locally on your system through docker image:

Step 1: Pull the Docker image for MyApp:
docker pull wasimalii/inc42:latest-656

Step 2: Run the Docker container:
docker run -itd -p 3001:3000 --name=my-app wasimalii/inc42:latest-656

Step 3: Check if the container is running:
docker ps

Testing Locally
To test the application locally, use the following command:
curl -vi 'http://localhost:3000'
