ping:
	ansible -i hosts -m ping all

run-playbook:
	ansible-playbook -vv  -i hosts -K devlaptop-playbook.yml

run-playbook-new:
		ansible-playbook -vv  -i hosts -K devlaptop-playbook-new.yml

