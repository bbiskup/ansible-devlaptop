ping:
	ansible -i hosts -m ping all

run-playbook:
	ansible-playbook  -i hosts -K devlaptop-playbook.yml
