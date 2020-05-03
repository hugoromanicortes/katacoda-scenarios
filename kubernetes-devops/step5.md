Use Kafka Kudo Operator

## Kafka Kudo Operator

Based on https://github.com/kudobuilder/operators/blob/master/repository/kafka/docs/latest/install.md

### Step 1 - Create NS
Create a dedicated Kubernetes namespace:

`kubectl create ns kafka-kudo`{{execute HOST1}}

### Step 2 - Install Zookeeper

`kubectl kudo install zookeeper -n kafka-kudo --instance=zk-kudo-instance`{{execute HOST1}}

Chek zookeeper plan:

`kubectl kudo plan status --instance=zk-kudo-instance -n kafka-kudo`{{execute HOST1}}

### Step 3 - Install Kafka

`kubectl kudo install kafka --instance=kafka-kudo-instance -n kafka-kudo  -p ZOOKEEPER_URI="zk-kudo-instance-zookeeper-0.zk-kudo-instance-hs:2181"`{{execute HOST1}}

Chek kafka plan:

`kubectl kudo plan status --instance=zk-kudo-instance -n kafka-kudo`{{execute HOST1}}