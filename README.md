# PureLogic IT Ansible demo Feburary 2023

## Before the demo

### Create the environment
Run the terraform located at https://github.com/PureLogicIT/tf-rhel-demo-feb-2023

After the terraform is up. Get the output of `terraform output --json` and run the `create_inventory.sh` script to setup the inventory for the demo.

### Initialize the environment
Run the `initialize.yml` playbook to bring the environment to a known state. This is more or less the same playbook from the 2022 demo we did.

## During the demo

### Setup the application
Run the `setup_services.yml` playbook to create the docker-compose application and setup clustering of the nodes.

### Create load balancer
This can be done before or after the application is up. Run the `fortigate.yml` playbook to create the load balancer object on the Fortigate. This will allow external traffic to the application

### Upgrade RHEL
Run the `upgrade-rhel-8-to-9.yml` playbook. This will take some time.
