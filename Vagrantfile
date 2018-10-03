# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "kubemaster" do |kubemaster|
    kubemaster.vm.hostname = "kubemaster"
    kubemaster.vm.box = "ubuntu/bionic64"
    kubemaster.vm.network "private_network", ip: "192.168.99.20"
#    kubemaster.vm.provision :shell, inline: "sed 's/127\.0\.0\.1.*kubemaster.*/192\.168\.99\.20 kubemaster/' -i /etc/hosts"
    kubemaster.vm.provision "shell", path: "provision.sh"
    kubemaster.vm.provision "file", source: "./scripts", destination: "$HOME/scripts"
    kubemaster.vm.provider "virtualbox" do |vb|
      vb.memory = "3096"
      vb.cpus = 4 
    end
  end

  (1..2).each do |i|
    config.vm.define "worker#{i}" do |worker|
      worker.vm.hostname = "worker#{i}"
      worker.vm.box = "ubuntu/bionic64"
      worker.vm.network "private_network", ip: "192.168.99.2#{i}"
#      worker.vm.provision :shell, inline: "sed 's/127\.0\.0\.1.*worker.*/192\.168\.99\.2#{i} worker#{i}/' -i /etc/hosts"
      worker.vm.provision "shell", path: "provision.sh"
      worker.vm.provider "virtualbox" do |vb|
        vb.memory = "1624"
        vb.cpus = 2
      end
    end
  end

end
