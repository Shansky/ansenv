install: ansibleppa ansiblepackage

ansibleppa:
	apt-add-repository -y ppa:ansible/ansible
	apt-get update

ansiblepackage:
	apt-get install -y ansible

provision:
	ansible-playbook -i "localhost," -c local playbooks/provision.yml

debug:
	ansible-playbook -i "localhost," -c local playbooks/provision.yml -vvv