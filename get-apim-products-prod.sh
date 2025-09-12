#!/usr/bin/env sh
#
function azcli(){
   local resourceGroup="$1" subscription="$2" serviceName="$3" output="$4" ;
   echo "subscription  : ${subscription}"
   echo "resource-group: ${resourceGroup}"
   echo "serviceName   : ${serviceName}"
   echo "output        : ${output}"
   query='[].{name:name,displayName:displayName,description:description}'
   #
   az account set --subscription $subscription
   az apim product list  --resource-group $resourceGroup --service-name $serviceName --query $query -o tsv > $output
   echo "completed: ${output}"
}
#
# production
#azcli 'rgapim-prod' '1b730a1e-a5f0-416b-9508-f6c5d890cb16' 'apim-uk-prod' 'apim-subscriptions-de-prod.csv'
#azcli 'rgapim-prod' '7fd054b4-b369-40db-bb60-58cceaf53488' 'apim-uk-prod01' 'apim-subscriptions-uk-prod.csv'
#azcli 'rgapim-prod' 'f7352245-06c3-4dc5-93dc-8b4fdba6b991' 'apim-prod-us' 'apim-subscriptions-us-prod.csv'
#azcli 'RGAPIM-Prod' '36ad9702-b144-4166-9757-49642452cab2' 'apim-jp-prod01' 'apim-subscriptions-jp-prod.csv'
#azcli 'RGAPIM-Prod' 'fee7fbde-5414-4b10-a225-c25fbed93cc9' 'apim-au-prod01' 'apim-subscriptions-ap-prod.csv'
#zip apim-subscriptions-prod apim-subscriptions-??-prod.csv

# Model
azcli 'RGAPIM-Model' 'Assurant Spoke UKSouth SharedProd' 'apim-uk-prod' 'apim-subscriptions-uk-prod.csv'
azcli 'RGAPIM-Model' 'Assurant Spoke Germany West Central SharedProd' 'apim-de-prod' 'apim-subscriptions-de-prod.csv'
azcli 'RGAPIM-Model' 'Assurant Spoke AustraliaSouthEast SharedProd' 'apim-ap-prod' 'apim-subscriptions-ap-prod.csv'
azcli 'RGAPIM-Model' 'Assurant Spoke JapanEast SharedProd' 'apim-jp-prod' 'apim-subscriptions-jp-prod.csv'
azcli 'RGAPIM-Model' 'Assurant Spoke CentralUS SharedProd' 'apim-us-prod' 'apim-subscriptions-us-prod.csv'

zip apim-subscriptions-model apim-subscriptions-??-model.csv

#name	        Location	            Resource group	Subscription	                                costCenter
#RGAPIM-Model	Germany West Central	rgapim-model	Assurant Spoke Germany West Central SharedProd	8560461
#RGAPIM-Model	UK West	                rgapim-model	Assurant Spoke UKWest SharedProd	            8560461
#RGAPIM-Model	UK South	            rgapim-model	Assurant Spoke UKSouth SharedProd	            8560461
#RGAPIM-Model	Australia Southeast	    rgapim-model	Assurant Spoke AustraliaSouthEast SharedProd	8560461
#RGAPIM-Model	Japan East	            rgapim-model	Assurant Spoke JapanEast SharedProd	            8560461
#RGAPIM-Model	Central US	            rgapim-model	Assurant Spoke CentralUS SharedProd	            8565060
#RGAPIM-Model	South Central US	    rgapim-model	Assurant Spoke SouthCentralUS SharedProd	    8560460
#RGAPIM-Model	North Central US	    rgapim-model	Assurant Spoke NorthCentralUS SharedProd	    8560460


#RGAPIM-Prod	UK South	            rgapim-prod	    Assurant Spoke UKSouth SharedProd	            8560461
#RGAPIM-Prod	Japan West	            rgapim-prod	    Assurant Spoke JapanWest SharedProd	            8560461
#RGAPIM-Prod	Australia East	        rgapim-prod	    Assurant Spoke AustraliaEast SharedProd	        8560461
#RGAPIM-Prod	Australia Southeast	    rgapim-prod	    Assurant Spoke AustraliaSouthEast SharedProd	8560461
#RGAPIM-Prod	Central US	            rgapim-prod	    Assurant Spoke CentralUS SharedProd	            8565060
#RGAPIM-Prod	South Central US	    rgapim-prod	    Assurant Spoke SouthCentralUS SharedProd	    8560460
#RGAPIM-Prod	North Central US	    rgapim-prod	    Assurant Spoke NorthCentralUS SharedProd	    8560460
#RGAPIM-Prod	UK West	                rgapim-prod	    Assurant Spoke UKWest SharedProd	            8560461
