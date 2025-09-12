#!/usr/bin/env sh
#
# List resources
#
function azcli(){
   local resourceGroup="$1" output="$2" subscription="$3";
   echo "resource-group: ${resourceGroup}"
   echo "output        : ${output}"
   types=("Microsoft.ApiManagement/service" "Microsoft.Insights/components" "Microsoft.KeyVault/vaults" "Microsoft.Storage/storageAccounts" "Microsoft.insights/webtests" "Microsoft.DocumentDb/databaseAccounts" "Microsoft.EventGrid/topics" "Microsoft.ServiceBus/namespaces" "Microsoft.Web/serverFarms" "Microsoft.Web/sites" "Microsoft.OperationalInsights/workspaces")
   typeNames=("service" "components" "vaults" "storageAccounts" "webtests" "databaseAccounts" "topics" "namespaces" "serverFarms" "sites" "workspaces")
   az account set --subscription ${subscription}
   for i in ${!types[@]}; do
     echo "type     : ${types[$i]}"
     echo "type-name: ${typeNames[$i]}"
     az resource list --resource-group ${resourceGroup} --resource-type ${types[$i]} --output json --query "[].{id:id,name:name,resourceGroup:resourceGroup,type:type,sku:sku.name,kind:kind,location:location}" > resource-list/${output}_${typeNames[$i]}.json
   done
}
# production
azcli "RGAPIM-Prod" "jp-apim-prod" "36ad9702-b144-4166-9757-49642452cab2"
azcli "RGAPIM-Prod" "ap-apim-prod" "fee7fbde-5414-4b10-a225-c25fbed93cc9"
azcli "RGELITAPROD" "jp-elita-prod" "36ad9702-b144-4166-9757-49642452cab2"
azcli "RGELITAPROD" "ap-elita-prod" "59e584f7-c9aa-450c-8e89-45ab1741e922"
# model
azcli "RGElitaMod" "jp-elita-modl" "36ad9702-b144-4166-9757-49642452cab2"
azcli "RGElitaMod" "ap-elita-modl" "fee7fbde-5414-4b10-a225-c25fbed93cc9"

