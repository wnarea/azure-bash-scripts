subscriptionId=$1
resourceGroup=$2
functionApp=$3
kvName=$4
kvUri="https://$kvName.vault.azure.net/"
echo "subscriptionId:$subscriptionId"
echo "resourceGroup :$resourceGroup"
echo "functionApp   :$functionApp"
echo "kvName        :$kvName"
echo "kvUri         :$kvUri"
az account set --subscription $subscriptionId
objectId=$(az ad signed-in-user show --query id -o tsv)
echo echo "objectId         :$objectId"
az keyvault set-policy --name $kvName --secret-permissions all --object-id $objectId
az functionapp config appsettings list --name $functionApp --resource-group $resourceGroup --query "[].{name:name,value:value}" > local-settings.json
secretIds=$(az keyvault secret list --id $kvUri --query "[].{name:name}")
echo $secretIds
items=$(echo $secretIds | jq -c -r '.[]' )
separator='['
echo '[' > kv-content.json
for item in ${items[@]}; do    
    echo gettting secret for $item
    itemname=$(echo $item | jq -c -r '.name')
    #echo $itemname
    secret=$(az keyvault secret show --vault-name $kvName --name $itemname | jq -c -r '.value')
    #echo $secret
    json_string=$(printf '%s {"name":"%s", "value":"%s"}' $separator $itemname $secret)
    echo $json_string >> kv-content.json
    separator=','
done

echo ']' >> kv-content.json