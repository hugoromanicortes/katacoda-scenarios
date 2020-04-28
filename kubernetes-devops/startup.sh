#!/usr/bin/env sh

sleep 10

# cp -r /root/resources /old/
rm -rf /root/resources
mkdir -p /root/resources
cp -r /root/newresources/* /root/resources/
rm -rf /root/newresources
kubectl delete all --all

# Prepull docker images used
docker pull tomcat:7.0
docker pull ananwaresystems/webarchive:1.0