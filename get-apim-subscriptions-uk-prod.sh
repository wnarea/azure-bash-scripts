subscriptionId='7fd054b4-b369-40db-bb60-58cceaf53488'
resourceGroup='rgapim-prod'
apimName='apim-uk-prod01'
az account set --subscription $subscriptionId
apimId=$(az apim show --name $apimName --resource-group $resourceGroup --query id -o tsv)
echo "[apimId     ] :$apimId"
az rest --method get --uri ${apimId}/subscriptions?api-version=2022-08-01 > apim-subscriptions-uk-prod.json