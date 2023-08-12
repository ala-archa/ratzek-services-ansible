#! /bin/sh

time ansible-playbook \
     -v \
     -i inventory/local.yaml \
     -e @vault.yaml --ask-vault-pass \
     playbooks/main.yaml \
     $*
