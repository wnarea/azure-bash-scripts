#!/bin/sh
accountName="cdb-workqueue-test-ap"
resourceGroupName="RGWorkqueue-NonProd"
databaseName="WorkQueueDB"
container="WorkQueue"
az cosmosdb sql container throughput migrate --account-name $accountName --resource-group $resourceGroupName --database-name $databaseName --name $container --throughput-type 'autoscale'