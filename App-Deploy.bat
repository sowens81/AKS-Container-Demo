@echo off
echo Deploy Kubernetes Micro Service Application
echo Set Variables
SET nspace="sock-shop"
SET appmanifest="kubernetes\complete-demo-custom.yaml"

echo Create Application Name space
kubectl create namespace %nspace%

echo deploy application
cd kubernetes
kubectl apply -f %appmanifest%

echo Check container running state
kubectl get pods --namespace %nspace%