#!/bin/bash
fname="fa-systempolicy-modl-u3"
rg="RGELITAMOD"
subscription="06d77514-9978-4bac-9322-f24daeb0d6c5"
declare -a functions=("CancelCertificateFunction" "EnrollCertificateFunction" "GetCertificateDetail" "GetCertificateDetailV2" "GetCertificateNumber")
# get length of an array
arraylength=${#functions[@]}
# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
  disable="AzureWebJobs.${functions[$i]}.Disabled=false"
  echo "index: $i, func: $disable"
  az functionapp config appsettings set --name $fname --resource-group $rg --settings $disable --subscription $subscription
done

