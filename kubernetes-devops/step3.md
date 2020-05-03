Use Kafka Helm chart

## Kafka Helm chart

This scenario is based on official kafka charts: https://github.com/helm/charts

### Step 1 - Create NS
Create a dedicated Kubernetes namespace:

`kubectl create ns kafka`{{execute HOST1}}

### Step 2 - Allow repositories
In order to allow your Helm client to look for charts, we need to enable repositories. For this scenario kafka is in incubator state and kafka-manager is in stable state.

Add stable repository
`helm repo add stable https://kubernetes-charts.storage.googleapis.com`{{execute HOST1}}

Add incubator repository:
`helm repo add incubator https://kubernetes-charts-incubator.storage.googleapis.com`{{execute HOST1}}

### Step 3 - Install kafka
`helm install --name kafka-cluster --namespace kafka incubator/kafka`{{execute HOST1}} 
 
### Step 4 - Install kafka-manager
`helm install --name kafka-manager --namespace kafka  stable/kafka-manager`{{execute HOST1}}
