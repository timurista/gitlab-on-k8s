# !/bin/bash

set -ex

kubectl config current-context

helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm get values gitlab > gitlab.yaml
helm upgrade gitlab gitlab/gitlab -f gitlab.yaml
