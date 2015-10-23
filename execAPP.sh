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
##VPAR-SGT-APP-01 - 172.16.15.4
./execRecipePT.sh VPAR-APP-01 $chef_resource > /var/log/chef/172.16.15.4.txt &
##WALMART-SGT-APP-01 - 172.16.15.6
./execRecipeEN.sh NVTSGT01.nvta.corp $chef_resource > /var/log/chef/172.16.15.6.txt &
##NVT-SGT-APP-01 - 172.16.15.8
./execRecipePT.sh NVTSGTUOL-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.8.txt &
##NVT-SGT-APP-02 - 172.16.15.12
./execRecipePT.sh NVTSGTAPP02.nvta.corp $chef_resource > /var/log/chef/172.16.15.12.txt &
##WHIRLPOOL-SGT-APP-01 - 172.16.15.23
./execRecipePT.sh NVTWHIRLPOOLAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.23.txt &
##AG-SGT-APP-01 - 172.16.15.25
./execRecipePT.sh NVTAGAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.25.txt &

###Ambientes VIVO
##VIVO-SGT-APP-01 - 10.10.30.14
./execRecipePT.sh VIVO-APP-01 $chef_resource > /var/log/chef/10.10.30.14.txt &

###Ambientes AWS
##PORTO-SGT-APP-01 - 172.31.20.227
./execRecipeEN.sh SGTPORTOAPP01.nvta.corp $chef_resource > /var/log/chef/172.31.20.227.txt &
##SGT3-SGT-APP-01 - 172.31.26.214
./execRecipeEN.sh NVTSGTAPP03.nvta.corp $chef_resource > /var/log/chef/172.31.26.214.txt &
