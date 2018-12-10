#!/bin/bash
# Deploy Azure AKS Cluster
# Set Variables

rgname="Container-Demo-rg"
rglocation="ukwest"
aksname="fujcondemo1"
nodes="2"
username="OWENSS"

az group create --name ${rgname} --location ${rglocation}

az aks create --resource-group ${rgname} --name ${aksname} --node-count ${nodes} --enable-addons monitoring --generate-ssh-keys

az aks install-cli

az aks get-credentials --resource-group ${rgname} --name ${aksname}

kubectl get nodes