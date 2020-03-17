#!/bin/sh
# Script to install the pod network
# Please execute this script in root mode in the master node
# Please execute this script after add all slaves nodes in the cluster

echo ===== Instaling Pod Network =====

kubectl apply -f https://docs.projectcalico.org/v3.9/manifests/calico.yaml
