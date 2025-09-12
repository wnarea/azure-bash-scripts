#!/bin/bash
subscriptionId="71d00b98-02b3-47df-961f-b2516cbb33ca"
resourceGroup="RGElitaDev"
templateFile="Alerts-Arm-Resources.json"
alertName="Grind API Failed Alert"
#
echo $templateFile
echo "deploy in ai-elita-test-u1"
az deployment group create --name "create-alert-test-u1" --resource-group $resourceGroup --template-file $templateFile --parameters alertName="Grind API Failed Alert" \
  alertDescription="Grind API Failed Alert" \
  environment=Test \
  tenantCode=u1 \
  primaryLocation=northcentralus \
  secondaryLocation=northcentralus \
  aiName=ai-elita-test-u1 \
  actionGroupName=ag-elita-engineering-leaders