# -la/usr/bin/env bash
if [ -z $1 ]
then
 #Comando executado caso nenhum parametro seja passado por script em $1
 export chef_resource="recipe[sgt3::downloadNextract]"
else
 export chef_resource=$1
fi

echo $chef_resource

##VPAR-SGT-IIS-01 - 172.16.15.3
#./execRecipeEN.sh VPAR-SGT-IIS-02.nvta.corp $chef_resource  > /var/log/chef/172.16.15.3.txt &
##VPAR-SGT-APP-01 - 172.16.15.4
#./execRecipePT.sh WIN-V98948XPU8D $chef_resource > /var/log/chef/172.16.15.4.txt &
##WALMART-SGT-IIS-01 - 172.16.15.5
#./execRecipeEN.sh NVTCD $chef_resource > /var/log/chef/172.16.15.5.txt &
##WALMART-SGT-APP-01 - 172.16.15.6
#./execRecipeEN.sh NVTSGT01.nvta.corp $chef_resource > /var/log/chef/172.16.15.6.txt &
##NVT-SGT-IIS-01 - 172.16.15.7
./execRecipeEN.sh NVT-SGT-IIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.7.txt &
##NVT-SGT-APP-01 - 172.16.15.8
#./execRecipePT.sh NVTSGTUOL-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.8.txt &
##CACIQUE-SGT-IISAPP-01 - 172.16.15.9
./execRecipeEN.sh CACIQUE-SGT-IISAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.9.txt &
#DAMOVO-SGT-IISAPP-01 - 172.16.15.10
#./execRecipeEN.sh DAMOVO.nvta.corp $chef_resource > /var/log/chef/172.16.15.10.txt &
##ELDORADO-SGT-IISAPP-01 - 172.16.15.11
./execRecipeEN.sh ELDORADO.nvta.corp $chef_resource > /var/log/chef/172.16.15.11.txt &
##NVT-SGT-APP-02 - 172.16.15.12
#./execRecipePT.sh NVTSGTAPP02.nvta.corp $chef_resource > /var/log/chef/172.16.15.12.txt &
##HOTBILL-SGT-IISAPP-01 - 172.16.15.13
./execRecipeEN.sh HOTBILL.nvta.corp $chef_resource > /var/log/chef/172.16.15.13.txt &
##TNX-SGT-IISAPP-01 - 172.16.15.14
./execRecipeEN.sh TNX.nvta.corp $chef_resource > /var/log/chef/172.16.15.14.txt &
##DAMOVO-SGT-IISAPP-02 - 172.16.15.15
##./execRecipePT.sh DAMOVO-SGT-IISAPP-02.nvta.corp $chef_resource > /var/log/chef/172.16.15.15.txt &
##NVT-SGT-IIS-02 - 172.16.15.18
./execRecipeEN.sh NVT-SGT-IIS-02.nvta.corp $chef_resource > /var/log/chef/172.16.15.18.txt &
##JOHNSON-SGT-IISAPP-01 - 172.16.15.19
./execRecipeEN.sh JOHNSON-SGT-IIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.19.txt &
##WHIRLPOOL-SGT-IIS-01 - 172.16.15.22
./execRecipeEN.sh NVTWHIRLPOOLIIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.22.txt &
##WHIRLPOOL-SGT-APP-01 - 172.16.15.23
#./execRecipePT.sh NVTWHIRLPOOLAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.23.txt &
##AG-SGT-IIS-01 - 172.16.15.24
#./execRecipeEN.sh NVTAGIIS-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.24.txt &
##AG-SGT-APP-01 - 172.16.15.25
#./execRecipePT.sh NVTAGAPP-01.nvta.corp $chef_resource > /var/log/chef/172.16.15.25.txt &
##VIVO-SGT-IIS-01 - 10.10.30.13
#./execRecipeEN.sh Vivo-SGT-IIS-02 $chef_resource > /var/log/chef/10.10.30.13.txt &
##VIVO-SGT-APP-01 - 10.10.30.14
#./execRecipePT.sh VIVO-APP-01 $chef_resource > /var/log/chef/10.10.30.14.txt &


##SGT-DEV - 172.31.20.54
#./execRecipeEN.sh SGT-dev.nvta.corp $chef_resource > /var/log/chef/172.31.20.54.txt &

##SGT-DEV - 172.31.20.54
#./execRecipeEN.sh NVTHOMNGN01.nvta.corp $chef_resource  > /var/log/chef/172.31.20.54.txt &

#Template
# - 172.16.15.
#./execRecipeEN.sh .nvta.corp $chef_resource  > /var/log/chef/10.10.30.14.txt &
# - 172.16.15.
#./execRecipePT.sh .nvta.corp $chef_resource  > /var/log/chef/10.10.30.14.txt &



