#!/bin/bash

set -x
# from https://learn.hashicorp.com/tutorials/terraform/install-cli
# all commands combined to complete installation
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
terraform -help
terraform -help plan
terraform -install-autocomplete
