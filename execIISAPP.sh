# -la/usr/bin/env bash
if [ -z $1 ]
then
 #Comando executado caso nenhum parametro seja passado por script em $1
 export chef_resource="recipe[sgt3::downloadNextract]"
else
 export chef_resource=$1
fi

echo $chef_resource

###Ambientes UOL CLIENTES
##CACIQUE-SGT-IISAPP-01 - 172.16.15.9
./execRecipeEN.sh CACIQUE-SGT-IISAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.9.txt &
#DAMOVO-SGT-IISAPP-01 - 172.16.15.10
./execRecipeEN.sh DAMOVO.nvta.corp $chef_resource > /var/log/chef/172.16.15.10.txt &
##ELDORADO-SGT-IISAPP-01 - 172.16.15.11
./execRecipeEN.sh ELDORADO.nvta.corp $chef_resource > /var/log/chef/172.16.15.11.txt &
##HOTBILL-SGT-IISAPP-01 - 172.16.15.13
./execRecipeEN.sh HOTBILL.nvta.corp $chef_resource > /var/log/chef/172.16.15.13.txt &
##TNX-SGT-IISAPP-01 - 172.16.15.14
./execRecipeEN.sh TNX.nvta.corp $chef_resource > /var/log/chef/172.16.15.14.txt &
##DAMOVO-SGT-IISAPP-02 - 172.16.15.15
#./execRecipePT.sh DAMOVO-SGT-IISAPP-02.nvta.corp $chef_resource > /var/log/chef/172.16.15.15.txt &
##JOHNSON-SGT-IISAPP-01 - 172.16.15.19
./execRecipeEN.sh JOHNSON-SGT-IIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.19.txt &


