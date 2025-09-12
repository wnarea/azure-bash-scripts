subscriptionId=$1
resourceGroup=$2
serviceName=$3
name=$4
#
if [ "$name" = "none" ]; then
  uri="https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.ApiManagement/service/$serviceName/subscriptions?api-version=2024-05-01"
  echo > subscription-names.txt
  while [ "$uri" != "null" ]
  do
    result=$(az rest --method get --uri $uri)
    count=$(echo $result | jq -r -c '.count')
    uri=$(echo $result | jq -r -c '.nextLink')
    echo Loaded: $count, $uri
    echo $result | jq -c -r '.value[] | .name' >> subscription-names.txt
  done
  sort subscription-names.txt
else
  az rest --method post --uri "https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.ApiManagement/service/$serviceName/subscriptions/$name/listSecrets?api-version=2024-05-01" 
fi

