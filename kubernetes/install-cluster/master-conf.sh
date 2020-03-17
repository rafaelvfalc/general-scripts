#!/bin/sh
# Script to configure the master node of your k8s cluster
# Please execute this script in root mode

echo ===== Instaling dependencies =====

apt-get update
swapoff -a
curl -fsSL https://get.docker.com | bash
apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl

echo ===== Initializing cluster =====

kubeadm init --apiserver-advertise-address $(hostname -I | awk '{print $1}')
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
