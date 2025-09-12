subscriptionId=$1
resourceGroup=$2
serviceName=$3
name=$4
#
content='{"properties":{"format":"xml","description":"","value":"<fragment></fragment>"}}'
# PUT https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/policyFragments/{id}?api-version=2024-05-01
az rest --method put --uri "https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.ApiManagement/service/$serviceName/policyFragments/$name?api-version=2024-05-01" --body "$content"

