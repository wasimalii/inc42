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




Here are the steps to set up and run the Backend-api (GO) application (MyApp) locally on your system through docker image:

Step 1: Pull the Docker image for MyApp:
docker pull wasimalii/inc42:backend_go

Step 2: Run the Docker container:
docker run -itd -p 8888:8888 --name=my-app-backend wasimalii/inc42:backend_go

Step 3: Check if the container is running:
docker ps

Testing Locally
To test the application locally, use the following command:
curl -vi 'http://localhost:8888/api/hello'

<img width="1057" alt="Screenshot 2024-07-04 at 7 18 43 PM" src="https://github.com/wasimalii/inc42/assets/42905470/c56f66c6-45d8-45b3-ae66-bbbd05f5aabc">
