subscriptionId='4841df6f-3e0b-4027-9389-f5c56600a2e3'
resourceGroup='rgapim-prod'
apimName='apim-de-prod'
az account set --subscription $subscriptionId
apimId=$(az apim show --name $apimName --resource-group $resourceGroup --query id -o tsv)
echo "[apimId     ] :$apimId"
az rest --method get --uri ${apimId}/subscriptions?api-version=2022-08-01 > apim-subscriptions-de-prod.json