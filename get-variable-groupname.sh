organization="AIZ-GL"
project="GL.CL-Elita"
variableGroupName="Elita-SharedVariables-Production-US"
#
uri="https://dev.azure.com/$organization/$project/_apis/distributedtask/variablegroups?groupName=$variableGroupName"
#
az rest --headers Authorization="Basic OjFxbHV2d1dKVVI1VDlFa0hkelZOMWk5SVZGUUYzckFBWEhnYTlEU3FRYWVpakNOTmFoSThKUVFKOTlCR0FDQUFBQUExbUtiOEFBQVNBWkRPMjhRNA==" --method get --uri $uri 
