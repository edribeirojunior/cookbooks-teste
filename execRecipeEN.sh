knife node run_list add $1 "$2"
knife winrm name:$1 'chef-client' -x Administrator -P N@vit@220 -a ipaddress
knife node run_list remove $1 "$2"

echo "Ingles"
