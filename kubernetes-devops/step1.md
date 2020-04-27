Initialize a K8S cluster.

## Init Master

The command below will initialise the cluster with a known token to simplify the following steps.

`kubeadm init --token=102952.1a7dd4cc8d1f4cc5`{{execute HOST1}}

In production, it's recommend to exclude the token causing kubeadm to generate one on your behalf.

## Add worker
Once the Master has initialized, additional nodes can join the cluster as long as they have the correct token. The tokens can be managed via kubeadm token, for example kubeadm token list{{execute}}.

One the second node, run the command to join the cluster providing the IP address of the Master node.

`kubeadm join --token=102952.1a7dd4cc8d1f4cc5 [[HOST_IP]]:6443`{{execute HOST2}}

This is the same command provided after the Master has been initialised.

## Explore

The cluster has now been initialised. The Master node will manage the cluster, while our one worker node will run our container workloads.

To manage the Kubernetes cluster, the client configuration and certificates are required. This configuration is created when kubeadm initialises the cluster. The command copies the configuration to the users home directory and sets the environment variable for use with the CLI.

`sudo cp /etc/kubernetes/admin.conf $HOME/ & sudo chown $(id -u):$(id -g) $HOME/admin.conf & export KUBECONFIG=$HOME/admin.conf`{{execute HOST1}}

The Kubernetes CLI, known as _kubectl_, can now use the configuration to access the cluster. For example, the command below will return the two nodes in our cluster.

`kubectl get nodes`{{execute HOST1}}

At this point, the Nodes may not be ready. This is because the Container Network Interface has not been deployed. This will be fixed within the next step.