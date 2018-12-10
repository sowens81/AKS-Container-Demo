@echo off
echo Deploy Azure AKS Cluster
echo Set Variables

SET rgname="Container-Demo-rg"
SET rglocation="ukwest"
SET aksname="fujcondemo1"
SET nodes="2"
SET username="OWENSS"

call az group create --name %rgname% --location %rglocation%

call az aks create --resource-group %rgname% --name %aksname% --node-count %nodes% --enable-addons monitoring --generate-ssh-keys

call az aks install-cli

set PATH=%PATH%;C:\Users\%username%\.azure-kubectl

call az aks get-credentials --resource-group %rgname% --name %aksname%

kubectl get nodes