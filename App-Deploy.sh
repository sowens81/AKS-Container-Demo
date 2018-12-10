#!/bin/bash
# Deploy Kubernetes Micro Service Application
# Set Variables
nspace="sock-shop"
appmanifest="kubernetes\complete-demo-custom.yaml"

# Create Application Name space
kubectl create namespace ${nspace}

# deploy application
cd kubernetes
kubectl apply -f ${appmanifest}

# Check container running state
kubectl get pods --namespace ${nspace}