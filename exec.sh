# -la/usr/bin/env bash
if [ -z $1 ]
then
 #Comando executado caso nenhum parametro seja passado por script em $1
 export chef_resource="recipe[sgt3::downloadNextract]"
else
 export chef_resource=$1
fi

echo $chef_resource

##SGT-DEV - 172.31.20.54
#./execRecipeEN.sh SGT-dev.nvta.corp $chef_resource > /var/log/chef/172.31.20.54.txt &

##SGT-DEV - 172.31.20.54
#./execRecipeEN.sh NVTHOMNGN01.nvta.corp $chef_resource  > /var/log/chef/172.31.20.54.txt &

#Template
# - 172.16.15.
#./execRecipeEN.sh .nvta.corp $chef_resource  > /var/log/chef/10.10.30.14.txt &
# - 172.16.15.
#./execRecipePT.sh .nvta.corp $chef_resource  > /var/log/chef/10.10.30.14.txt &



