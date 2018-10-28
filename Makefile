setup:
		ansible-playbook playbook.setup.yml -i inventory.ini

cluster:
		ansible-playbook playbook.kubecluster.yml -i inventory.ini

clean:
		ansible-playbook playbook.deletecluster.yml -i inventory.ini
