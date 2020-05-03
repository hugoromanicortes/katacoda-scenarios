Use Kafka Helm chart

## Kafka Helm chart

This scenario is based on official kafka charts: https://github.com/helm/charts

### Step 1 - Create NS
Create a dedicated Kubernetes namespace:

`kubectl create ns kafka-helm`{{execute HOST1}}

### Step 2 - Allow repositories
In order to allow your Helm client to look for charts, we need to enable repositories. For this scenario kafka is in incubator state and kafka-manager is in stable state.

Add stable repository:
`helm repo add stable https://kubernetes-charts.storage.googleapis.com`{{execute HOST1}}

Add incubator repository:
`helm repo add incubator https://kubernetes-charts-incubator.storage.googleapis.com`{{execute HOST1}}

### Step 3 - Install kafka
`helm install kafka-cluster --namespace kafka-helm incubator/kafka --set persistence.storageClass=local-storage`{{execute HOST1}}

Get pods:
`kubectl get pods -n kafka-helm`{{execute HOST1}}
 
### Step 4 - Install kafka-manager
`helm install kafka-manager --namespace kafka-helm  stable/kafka-manager --set ingress.enabled=true`{{execute HOST1}}

Get pods:
`kubectl get pods -n kafka-helm`{{execute HOST1}}

export POD_NAME=$(kubectl get pods --namespace kafka -l "app=kafka-manager,release=kafka-manager" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:9000 -n kafka

## Clean environment
