APIMID=`az apim show --name apim-uk-model01 --resource-group RGAPIM-Model --query id -o tsv`
echo 'APIMID:$APIMID'