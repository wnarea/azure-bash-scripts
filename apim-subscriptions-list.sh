subscriptionId=$1
resourceGroup=$2
apimName=$3
apimId=$(az apim show --name $apimName --resource-group $resourceGroup --query id -o tsv --subscription $subscriptionId)
echo "[apimId     ] :$apimId"
az rest --method get --uri ${apimId}/subscriptions?api-version=2022-08-01 --subscription $subscriptionId