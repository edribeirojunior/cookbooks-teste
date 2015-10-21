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
##VPAR-SGT-IIS-01 - 172.16.15.3
#./execRecipeEN.sh VPAR-SGT-IIS-02.nvta.corp $chef_resource  > /var/log/chef/172.16.15.3.txt &
##WALMART-SGT-IIS-01 - 172.16.15.5
#./execRecipeEN.sh WALMART-IISAPP.nvta.corp $chef_resource > /var/log/chef/172.16.15.5.txt &
##NVT-SGT-IIS-01 - 172.16.15.7
#./execRecipeEN.sh NVT-SGT-IIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.7.txt &
##NVT-SGT-IIS-02 - 172.16.15.18
#./execRecipeEN.sh NVT-SGT-IIS-02.nvta.corp $chef_resource > /var/log/chef/172.16.15.18.txt &
##WHIRLPOOL-SGT-IIS-01 - 172.16.15.22
#./execRecipeEN.sh NVTWHIRLPOOLIIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.22.txt &
##AG-SGT-IIS-01 - 172.16.15.24
#./execRecipeEN.sh NVTAGIIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.24.txt &

###Ambientes VIVO
##VIVO-SGT-IIS-01 - 10.10.30.13
#./execRecipeEN.sh Vivo-SGT-IIS-02 $chef_resource > /var/log/chef/10.10.30.13.txt &

###Ambientes AWS
##PORTO-SGT-IIS-01 - 172.31.21.113
#./execRecipeEN.sh NVTSGTPORTOIIS-.nvta.corp $chef_resource > /var/log/chef/172.31.21.113.txt &
##SGT3-SGT-IIS-01 - 172.31.30.171
#./execRecipeEN.sh NVTSGTIIS03.nvta.corp $chef_resource > /var/log/chef/172.31.30.171.txt &