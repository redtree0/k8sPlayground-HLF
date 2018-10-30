setup:
		ansible-playbook playbook/k8s/playbook.setup.yml -i inventory.ini
cluster:
		ansible-playbook ./playbook/k8s/playbook.kubecluster.yml -i inventory.ini
clean:
		ansible-playbook playbook/k8s/playbook.deletecluster.yml -i inventory.ini
setupHLF :
		ansible-playbook playbook/hyperledger/playbook.setupHLF.yml -i inventory.ini
deployHLF :
		ansible-playbook ./playbook/hyperledger/playbook.deployHLFNetwork.yml -i inventory.ini
deleteHLF :
		ansible-playbook ./playbook/hyperledger/playbook.deleteHLFNetwork.yml -i inventory.ini
