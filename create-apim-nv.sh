#
id='Elita-alpha-e1-Apim-Program-Url'
value='https://fa-program-modl-e1.azurewebsites.net/api/programs/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Apim-Policy-Service-Url'
value='https://apim-elita-modl-eu.azure-api.net/elita/e1/policy/v1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Apim-Subscription-Key'
value='2d9e485786ff43aca8cad1c32b1c53e5'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Apim-Program-FA-Key'
value='2Ocj4k4dhgtfPD56T5XPyoXIFlynrZRVyDSw7ewbcE6P8w0iOP747w=='
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Apim-MultiItem-Policy-Service-Url'
value='https://apim-elita-modl-eu.azure-api.net/elita/e1/policy/multiItem/v1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Web-Policy-Service-BaseUrl'
value='https://elitaplus-modl.e1.assurant.com/ElitaPolicyServiceE1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Backend-Ldap-UserName'
value='elita1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-Backend-Ldap-Password'
value='elita1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU
#
id='Elita-alpha-e1-SF-Policy-Service-Base-Url'
value='https://elitaplus-services-modl.eu.assurant.com/ElitaPolicy/modl-e1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-EU