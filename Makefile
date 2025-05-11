.PHONY: edit_vault view_vault install-roles deploy-droplets pull-image run-container configure_datadog full-playbook

init_infra:
	terraform init

apply:
	terraform apply 

destroy:
	terraform destroy 

edit_vault:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-vault edit ansible/group_vars/webservers/vault.yml

view_vault:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-vault view ansible/group_vars/webservers/vault.yml

install-roles:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-galaxy install -r requirements.yml

deploy:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/inventory.ini -l webservers --user=root  ansible/playbook.yml

pull-image:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/inventory.ini -l webservers --user=root  ansible/playbook.yml --tags pull_image

run-container:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/inventory.ini -l webservers --user=root  ansible/playbook.yml --tags run_container

configure_datadog:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/inventory.ini -l webservers --user=root  ansible/playbook.yml --tags configure_datadog

full-playbook:
	@ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/inventory.ini -l webservers  ansible/playbook.yml 
