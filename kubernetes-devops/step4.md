Kubernetes Operators are software extensions to Kubernetes that make use of custom resources to manage applications and their components. Operators follow Kubernetes principles, notably the control loop.

Some of the things that you can use an operator to automate include:
 - deploying an application on demand
 - taking and restoring backups of that application’s state
 - handling upgrades of the application code alongside related changes such as database schemas or extra configuration settings
 - publishing a Service to applications that don’t support Kubernetes APIs to discover them
 - simulating failure in all or part of your cluster to test its resilience
 - choosing a leader for a distributed application without an internal member election process*
 
More details are available here: https://kubernetes.io/docs/concepts/extend-kubernetes/operator/

For this scenario we will use **Kudo**.

Kubernetes Universal Declarative Operator (KUDO) provides a declarative approach to building production-grade Kubernetes operators. While Kubernetes already comes with a lot of built-in automation to run simple workloads, complex scenarios often need a human operator. This is where KUDO is designed to help.

![Kudo Architecture](/hugoromanicortes/katacoda-scenarios/tree/master/kubernetes-devops/assets/kudo/kudo-architecture.png)

## Install Kudo

`cd $HOME/kudo`{{execute HOST1}}

`chmod +x install.sh | bash install.sh`{{execute HOST1}}

Init Kudo on our running cluster:

`kubectl kudo init`{{execute HOST1}}
