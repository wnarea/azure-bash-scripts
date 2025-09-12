#!/bin/bash
resourceGroup="RGElitaMod"
cosmosDbName=$1
subscriptionId=$2
echo CosmosDB: $cosmosDbName
echo SubscriptionId: $subscriptionId
az account set --subscription $subscriptionId
az cosmosdb keys list --name $cosmosDbName --resource-group $resourceGroup --type connection-strings 