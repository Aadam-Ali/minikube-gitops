#!/bin/bash

set -euo pipefail

kubectl apply -f argocd-namespace.yaml

helm repo add argo https://argoproj.github.io/argo-helm

helm install -n argocd -f argocd-values.yaml argocd argo/argo-cd
