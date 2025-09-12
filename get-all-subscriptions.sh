#subscriptions=$(az account list --query "[].{id:id,name:name}" --output json)
#echo $subscriptions > subscriptions.json
subscriptions=$(az account list --query "[].{id:id,name:name}" --output json | jq -r -c '.[] | {id,name}' )
echo $subscriptions
az account list --query "[].{id:id,name:name}" --output json | jq -r -c '.[] | {id,name}' | while read -r id && read -r name; do
    echo -e "ID: ${id}\t Name: ${name}"
    subscriptionId=$(jq -r '.id' <<< "$id");
    subscriptionName=$(jq -r '.name' <<< "$name");
    echo subscriptionId: $subscriptionId subscriptionName: $subscriptionName
    az account set --subscription $subscriptionId
    resourceGroups=$(az group list --query "[].{name:name,location:location}" | jq -c -r '.[] | {name,location}')
    for resourceGroup in ${resourceGroups[@]}; do
        rgName=$(echo $resourceGroup | jq -c -r '.name')
        rgLocation=$(echo $resourceGroup | jq -c -r '.location')
        echo "$subscriptionId, $subscriptionName, $rgName, $rgLocation" >> resource-groups.csv
    done
done