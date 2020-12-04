# !/bin/bash

set -ex

kubectl config current-context

# see: https://docs.gitlab.com/charts/

helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm install my-gitlab gitlab/gitlab \
    --set certmanager-issuer.email=me@example.com
