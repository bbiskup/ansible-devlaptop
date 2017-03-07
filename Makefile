ping:
	ansible -i hosts -m ping all

run-playbook:
	ansible-playbook -i hosts -K devlaptop-playbook.yml

run-single:
	ansible-playbook -vv  -i hosts -K single-role.yml 

run-single-step:
	ansible-playbook -vv  -i hosts -K single-role.yml --step
