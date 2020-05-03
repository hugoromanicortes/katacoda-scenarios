Use Kafka Kudo Operator

## Kafka Kudo Operator

Based on https://github.com/kudobuilder/operators/blob/master/repository/kafka/docs/latest/install.md

### Step 1 - Create NS
Create a dedicated Kubernetes namespace:

`kubectl create ns kafka-kudo`{{execute HOST1}}

### Step 2 - Zookeper and Kafka

`kubectl kudo install zookeeper -n kafka-kudo --instance=zk-kudo`{{execute HOST1}}

`kubectl kudo install kafka --instance=kafka-kudo-instance -n kafka-kudo  -p ZOOKEEPER_URI="zk-kudo-zookeeper-0.zk-kudo-hs:2181"`{{execute HOST1}}