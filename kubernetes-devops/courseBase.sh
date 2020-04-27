ssh root@[[HOST1_IP]] "kubeadm init --token=102952.1a7dd4cc8d1f4cc5"
sleep 60
ssh root@[[HOST2_IP]] "kubeadm reset"
ssh root@[[HOST2_IP]] "kubeadm join --discovery-token-unsafe-skip-ca-verification --token=102952.1a7dd4cc8d1f4cc5 [[HOST_IP]]:6443"

ssh root@[[HOST1_IP]] "sudo cp /etc/kubernetes/admin.conf $HOME/ & sudo chown $(id -u):$(id -g) $HOME/admin.conf & export KUBECONFIG=$HOME/admin.conf"