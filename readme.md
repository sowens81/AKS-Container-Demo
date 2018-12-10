#Container Build Demo

Run the following command in the DockerFile directory

Docker build -t {imagename}:{tag} .

Docker tag {imagename}:{tag} {dockerhubid}{imagename}:{tag}
Docker tag {imagename}:{tag} {dockerhubid}{imagename}:latest
Docker push {dockerhubid}{imagename}:{tag}
Docker push {dockerhubid}{imagename}:latest

Docker run -d --name webserver1 -p 8081:80 {imagename}:latest

http://127.0.0.1:8081

#AKS - Weaveworks Sock Shop Microservice Demo

## For Microsoft Windows

###Azure Cli 

Install Azure CLI MSI on your system and set the enviroment path

https://aka.ms/installazurecliwindows

###Deploymemnt

run the following commands

login az

Deploy-AKS.bat (Builds the AKS cluster on Azure)

Docker-Images.bat (Imports all images and upload to you personnel docker hub registry - change username parameter in file first)

App-Deploy.bat (Update the container registry name in the Kubentes/complete-demo-custom.yaml to your username first )

## For Linux

###Azure Cli 

Apt-Get Install - /AZcli/azcli-aptget.sh  (Run script as root)
Yum Install - /AZcli/azcli-yum.sh  (Run script as root)

###Deploymemnt

run the following commands

login az

Deploy-AKS.sh (Builds the AKS cluster on Azure)

Docker-Images.sh (Imports all images and upload to you personnel docker hub registry - change username parameter in file first)

App-Deploy.sh (Update the container registry name in the Kubentes/complete-demo-custom.yaml to your username first )