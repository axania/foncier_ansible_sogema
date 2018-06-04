# Audit360 Ansible Variables (and Inventory) for Sogema Technologies environments #


### What is this repository for? ###

* Contains the inventory and variables of Sogema Tech. controlled environments. 
* Meant to be used along with [audit360_ansible](https://bitbucket.org/ucis/audit360_ansible) project.


### Contents ###

* DEV
* QA
* UAT

### How do I get set up? ###

1. Checkout this repository.
2. Checkout [audit360_ansible](https://bitbucket.org/ucis/audit360_ansible) repo (in a separate folder).

Then

```shell
$ cd audit360_ansible
$ ansible-playbook -i <this-repo>/<env>/inventory ≤playbook≥.yml --vault-password-file <vaul-pass-file>.txt
```

### Contribution guidelines ###

* Just be there for the PRs, always branch from develop for new features. Branch from master only for hotfixes.

* Make sure once approved your changes are back in develop, coordinate with the team to branch to master.

### Who do I talk to? ###

* Marcos Garcia marcos.garcia@sogematech.com