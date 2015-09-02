#!/usr/bin/env bash
knife node run_list add $1 "$2"
knife winrm name:$1 'chef-client' -x Administrador -P N@vit@220 -a ipaddress
knife node run_list remove $1 "$2"
