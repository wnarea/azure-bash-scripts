subscriptionId=$1
resourceGroup=$2
serviceName=$3
name=$4
#
# GET https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/policyFragments/{id}?api-version=2024-05-01
az rest --method get --uri "https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.ApiManagement/service/$serviceName/policyFragments/$name?api-version=2024-05-01" 

