resourceGroup='RGAPIM-Model'
apimName='apim-uk-model01'
productName="elita-e1-TIMFin"
apimId=`az apim show --name $apimName --resource-group $resourceGroup --query id -o tsv --debug`
echo "[apimId     ] :$apimId"
echo "[productName] :$productName"
az rest --method post --uri ${apimId}/subscriptions/$productName/listSecrets?api-version=2022-08-01 --query primaryKey -o tsv --debug