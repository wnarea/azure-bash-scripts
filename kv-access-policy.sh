# execute sample: bash ./kv-access-policy.sh kv-telstra-modl-p1 RGElitaMod
az account set --subscription "$3"
objectId=$(az ad signed-in-user show --query "id" --output tsv)
echo objectId: $objectId
az keyvault set-policy --name $1 --secret-permissions all --certificate-permissions all --object-id $objectId --resource-group $2