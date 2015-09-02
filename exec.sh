#!/usr/bin/env bash
if [ -z $1 ]
then
 export chef_resource = $1
else
 #Comando executado caso nenhum parametro seja passado por script em $1
 export chef_resource = "recipe[sgt3::downloadNextract]"
fi

echo $chef_resource

##VPAR-SGT-IIS-01 - 172.16.15.3
#./execRecipeEN.sh VPAR-SGT-IIS-02.nvta.corp $chef_resource
##VPAR-SGT-APP-01 - 172.16.15.4
#./execRecipePT.sh WIN-V98948XPU8D.nvta.corp $chef_resource
##WALMART-SGT-IIS-01 - 172.16.15.5
./execRecipeEN NVTCD $chef_resource
##WALMART-SGT-APP-01 - 172.16.15.6
#./execRecipeEN.sh NVTSGT01.nvta.corp $chef_resource
##NVT-SGT-IIS-01 - 172.16.15.7
#./execRecipeEN.sh NVT-SGT-IIS-01.nvta.corp $chef_resource
##NVT-SGT-APP-01 - 172.16.15.8
#./execRecipePT.sh NVTSGTUOL-01.nvta.corp $chef_resource
##CACIQUE-SGT-IISAPP-01 - 172.16.15.9
#./execRecipeEN.sh CACIQUE-SGT-IISAPP-01.nvta.corp $chef_resource
##DAMOVO-SGT-IISAPP-01 - 172.16.15.10
#./execRecipeEN.sh DAMOVO.nvta.corp $chef_resource
##ELDORADO-SGT-IISAPP-01 - 172.16.15.11
#./execRecipeEN.sh ELDORADO.nvta.corp $chef_resource
##NVT-SGT-APP-02 - 172.16.15.12
#./execRecipePT.sh NVTSGTAPP02.nvta.corp $chef_resource
##HOTBILL-SGT-IISAPP-01 - 172.16.15.13
#./execRecipeEN.sh HOTBILL.nvta.corp $chef_resource
##TNX-SGT-IISAPP-01 - 172.16.15.14
#./execRecipeEN.sh TNX.nvta.corp $chef_resource
##DAMOVO-SGT-IISAPP-02 - 172.16.15.15
#./execRecipePT.sh DAMOVO-SGT-IISAPP-02.nvta.corp $chef_resource
##NVT-SGT-IIS-02 - 172.16.15.18
#./execRecipeEN.sh NVT-SGT-IIS-02.nvta.corp $chef_resource
##JOHNSON-SGT-IISAPP-01 - 172.16.15.19
./execRecipeEN JOHNSON-SGT-IIS-01.nvta.corp $chef_resource
##WHIRLPOOL-SGT-IIS-01 - 172.16.15.22
#./execRecipeEN.sh NVTWHIRLPOOLIIS-01.nvta.corp $chef_resource
##WHIRLPOOL-SGT-APP-01 - 172.16.15.23
#./execRecipePT.sh NVTWHIRLPOOLAPP-01.nvta.corp $chef_resource
##AG-SGT-IIS-01 - 172.16.15.24
#./execRecipeEN.sh NVTAGIIS-01.nvta.corp $chef_resource
##AG-SGT-APP-01 - 172.16.15.25
#./execRecipePT.sh NVTAGAPP-01.nvta.corp $chef_resource



#Template
# - 172.16.15.
#./execRecipeEN.sh .nvta.corp $chef_resource
# - 172.16.15.
#./execRecipePT.sh .nvta.corp $chef_resource

# - 172.16.15.
#./execRecipeEN.sh .nvta.corp $chef_resource


