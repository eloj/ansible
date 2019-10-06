#!/bin/bash
ANSIBLE_NOCOWS=1 ansible-playbook --ask-become-pass --connection=local -i localhost, dev.yaml
