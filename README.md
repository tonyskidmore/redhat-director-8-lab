# redhat-director-8-lab

This repo was created as a learning exercise in Ansible and Red Hat Director 8.  The goal is to be able to deploy an Undercloud and Overcloud
using Ansible and avoid executing manual steps. 

Requirements
------------

Ansible 2.2 or higher. (Ansible is automatically installed using the start.sh script)

## Quick Start

1. Login to the [Red Hat OPENTLC Labs][1] 

2. From Services - Catalogs order: 

       OPENTLC Cloud Infrastructure Labs - OpenStack 8 Director Lab 

3. Once you are able to login to the "workstation" trigger the operation of deploying the Undercloud and Overcloud by running the following commands:

  `# curl -O https://raw.githubusercontent.com/tonyskidmore/redhat-director-8-lab/master/start.sh`

  `# chmod +x start.sh && ./start.sh`

If the lab gods are with you after around 2.5 hours you should have a deployed Undercloud and Overcloud.  The configuration for both are defined in the host_vars/undercloud.yml.

Author Information
------------------

Tony Skidmore

[1]: https://labs.opentlc.com
