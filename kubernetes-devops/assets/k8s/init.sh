#!/bin/bash
`kubeadm init --token=102952.1a7dd4cc8d1f4cc5`

`sudo cp /etc/kubernetes/admin.conf $HOME/ & sudo chown $(id -u):$(id -g) $HOME/admin.conf & export KUBECONFIG=$HOME/admin.conf`