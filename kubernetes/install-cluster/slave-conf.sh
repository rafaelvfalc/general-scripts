#!/bin/sh
# Script to configure the slave(s) node(s) of your k8s cluster
# Please execute this script in root mode
# Please run this script after configure the master node

echo ===== Instaling dependencies =====

apt-get update
swapoff -a
curl -fsSL https://get.docker.com | bash
apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl

echo ===== Adding slave into cluster =====

# Get the 'kubeadm join' command and paste bellow
