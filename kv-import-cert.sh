# execute sample: bash ./kv-access-policy.sh kv-telstra-modl-p1 RGElitaMod
kvName=$1
rg=$2
subscription=$3
file=$4
az account set --subscription "$subscription"
objectId=$(az ad signed-in-user show --query "id" --output tsv)
echo objectId: $objectId
az keyvault set-policy --name $kvName --certificate-permissions get list import --object-id $objectId --resource-group $rg
az keyvault certificate import --vault-name $kvName --name elita-function-apps --file $file