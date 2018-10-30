#!/bin/bash


set -e

iface=enp0s8
ip4=$(/sbin/ip -o -4 addr list $iface | awk '{print $4}' | cut -d/ -f1)
default_nfs_ip=10.112.122.9

echo "nfs ip setup default : $default_nfs_ip -> nfs ip : $iface"
echo "namespace, cli templates file"
sed -i -e "s/$default_nfs_ip/$ip4/g"  ./setupCluster/templates/fabric_1_0_template_pod_namespace.yaml
sed -i -e "s/$default_nfs_ip/$ip4/g"  ./setupCluster/templates/fabric_1_0_template_pod_cli.yaml

cd ./setupCluster
echo "generateAll.sh"
sudo bash -c ./generateALL.sh

echo "hyperledger fabric deployment"
python3.5 ./transform/run.py