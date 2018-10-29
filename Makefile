setup:
		ansible-playbook ./playbook/k8s/playbook.setup.yml -i inventory.ini
cluster:
		ansible-playbook ./playbook/k8s/playbook.kubecluster.yml -i inventory.ini
clean:
		ansible-playbook ./playbook/k8s/playbook.deletecluster.yml -i inventory.ini
HLF :
		ansible-playbook ./playbook/hyperledger/playbook.hyperledger.yml -i inventory.ini
