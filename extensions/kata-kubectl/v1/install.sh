#!/bin/bash

# Script file to run hello-world in bash

#Kata deploy
kubectl apply -f https://raw.githubusercontent.com/kata-containers/kata-containers/main/tools/packaging/kata-deploy/kata-rbac/base/kata-rbac.yaml
kubectl apply -f https://raw.githubusercontent.com/kata-containers/kata-containers/main/tools/packaging/kata-deploy/kata-deploy/base/kata-deploy-stable.yaml

kubectl -n kube-system wait --timeout=10m --for=condition=Ready -l name=kata-deploy pod

kubectl apply -f https://raw.githubusercontent.com/kata-containers/kata-containers/main/tools/packaging/kata-deploy/runtimeclasses/kata-runtimeClasses.yaml

#apply gVisor runtime class
kubectl apply -f runsc-runtime-class.yaml