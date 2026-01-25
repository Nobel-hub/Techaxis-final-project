#!/bin/bash

terraform output -json instance_public_ips | jq -r '.[]' | \
awk '{print "ec2-"NR" ansible_host="$1" ansible_user=ubuntu ansible_ssh_private_key_file=../demo-nobel-keypair.pem"}' \
> ansible/inventory

echo "✅ Inventory file updated at ansible/inventory!"

