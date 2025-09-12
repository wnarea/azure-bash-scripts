#
id='Elita-alpha-u1-Apim-Program-Url'
value='https://fa-program-modl-u1.azurewebsites.net/api/programs/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Apim-Policy-Service-Url'
value='https://apim-elita-modl-us.azure-api.net/elita/u1/policy/v1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Apim-Subscription-Key'
value='bcd91413d8a64a0981bcc77755d21234'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Apim-Program-FA-Key'
value='D7qcP5igLqB07/wa4/lrasS62C6bWNup19cFHtXYyyEi66pirKEx1Q=='
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Apim-MultiItem-Policy-Service-Url'
value='https://apim-elita-modl-us.azure-api.net/elita/u1/policy/multiItem/v1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Web-Policy-Service-BaseUrl'
value='https://elitaplus-modl.u1.assurant.com/ElitaPolicyService1/'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Backend-Ldap-UserName'
value='elita1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-Backend-Ldap-Password'
value='elita1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
#
id='Elita-alpha-u1-SF-Policy-Service-Base-Url'
value='https://elitaplus-services-mod.us.assurant.com/ElitaPolicy/modl-u1'
az apim nv create --display-name $id --named-value-id $id --value $value --resource-group RGElitaMod --service-name apim-elita-modl-US
