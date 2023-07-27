# Para armar el listado de hosts
ansible-inventory --list -y

## Testing connection
### (https://docs.ansible.com/ansible/latest/collections/ansible/builtin/ping_module.html)
ansible all -m ping -u root
