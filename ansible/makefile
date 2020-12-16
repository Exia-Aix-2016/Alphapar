install:
	ansible-galaxy collection install -r requirements.yml 
	ansible-galaxy install -r requirements.yml
encrypt:
	ansible-vault encrypt --vault-password-file .vault_pass vars/vault.yml

decrypt:
	ansible-vault decrypt --vault-password-file .vault_pass vars/vault.yml

deploy:
	ansible-playbook --vault-password-file .vault_pass playbook.yml