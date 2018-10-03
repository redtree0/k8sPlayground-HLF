#!/bin/bash


set -e
workdir=$PWD

echo "python3.5 install"
sudo apt-get install libssl-dev openssl -y
wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
tar xzvf Python-3.5.0.tgz
cd Python-3.5.0
./configure
make
sudo make install
sudo ln -fs /opt/Python-3.5.0/Python /usr/bin/python3.5


echo "Install hyperledger-fabric bin"
cd $workdir
 curl https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/linux-amd64-1.0.0/hyperledger-fabric-linux-amd64-1.0.0.tar.gz | tar xz

 echo $workdir


