#!/usr/bin/env sh
#
# List resources
#
function azcli(){
   resourceGroup=$1
   output=$2
   subscription=$3
   echo "resource-group: ${resourceGroup}"
   echo "output        : ${output}"
   types=("Microsoft.ApiManagement/service")
   typeNames=("service")
   az account set --subscription ${subscription}
   echo "" > ${output}.json
   for i in ${!types[@]}; do
     echo "type     : ${types[$i]}"
     echo "type-name: ${typeNames[$i]}"
     az resource list --resource-group ${resourceGroup} --resource-type ${types[$i]} --output json --query "[].{id:id,name:name,resourceGroup:resourceGroup,type:type,sku:sku.name,kind:kind,location:location}" >> ${output}.json
   done
}
# production
azcli "RGAPIM-Prod" "apim-us-prod" "7add8347-f453-4697-85b7-6ba7c29ba734" 
azcli "RGAPIM-Prod" "apim-sa-prod" "7add8347-f453-4697-85b7-6ba7c29ba734" 
azcli "RGAPIM-Prod" "apim-eu-prod" "1b730a1e-a5f0-416b-9508-f6c5d890cb16" 
azcli "RGAPIM-Prod" "apim-de-prod" "1b730a1e-a5f0-416b-9508-f6c5d890cb16" 
azcli "RGAPIM-Prod" "apim-jp-prod" "07349c3c-6350-4d3b-b4a9-d84dbf009d05" 
azcli "RGAPIM-Prod" "apim-ap-prod" "59e584f7-c9aa-450c-8e89-45ab1741e922" 
# model


