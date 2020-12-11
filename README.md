# Alphapar
Contains all infrastructure code about our architecture.

## Structure 

```
root/
    |
    |-----Ansible/
    |            | ----vars/
    |            |         | --- vault.yml ⚠️ Must be encrypted
    |            | ---playbook.yml
    |            |
    |            | ---roles/
    |-----Terraform/
    |              | ----main.tf
    |              | ----providers.tf
    |              | ----variables.tf
    |
    |-----ssh/
             | ----id_rsa.pub
```

## About Ansible's vars

ansible vars are stocked into vars/vault.yml

> [!] https://docs.ansible.com/ansible/latest/user_guide/vault.html


to encrypt the vault :
```shell
make encrypt
OR
ansible-vault encrypt vars/vault.yml
```
to decrypt the vault :
```shell
make decrypt
OR
ansible-vault decrypt vars/vault.yml 
```

⚠️ Before commit make sure your have encrypted the vault by typing command listed above


## Deploiement

in ansible/

to deploy :
```
make deploy
```