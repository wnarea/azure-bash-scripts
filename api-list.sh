#! /bin/bash
output="today_$3.json"
echo Subscription  : $1
echo ResourceGroup : $2
echo ServiceName   : $3
echo Output        : $output
#az account set --name 'Assurant Spoke JapanEast SharedProd'
#az apim api list --subscription $1 --resource-group $2 --service-name $3 --query "[].{name:name, path:path, description:description, displayName:displayName, apiVersion:apiVersion}" > file.json
az apim api list --subscription $1 --resource-group $2 --service-name $3 > apim-apis.json