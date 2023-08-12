#! /bin/sh

time ansible-playbook \
     -v \
     -i inventory/vpn.yaml \
     -e @vault.yaml --ask-vault-pass \
     playbooks/main.yaml \
     $*
