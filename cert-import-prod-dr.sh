# bash ./kv-access-policy.sh kv-elita-prod-us-dr rgelitaprod "Assurant Spoke SouthCentralUS SharedProd"
# bash ./kv-access-policy.sh kv-elita-prod-sa-dr rgelitaprod "Assurant Spoke SouthCentralUS SharedProd"
# bash ./kv-access-policy.sh kv-elita-prod-eu-dr rgelitaprod "Assurant Spoke UKWest SharedProd"
# bash ./kv-access-policy.sh kv-elita-prod-de-dr rgelitaprod "Assurant Spoke UKWest SharedProd"
# bash ./kv-access-policy.sh kv-elita-prod-ap-dr rgelitaprod "Assurant Spoke AustraliaEast SharedProd"
# bash ./kv-access-policy.sh kv-elita-prod-jp-dr rgelitaprod "Assurant Spoke JapanWest SharedProd"
#
bash ./kv-import-cert.sh kv-elita-prod-us-dr rgelitaprod "Assurant Spoke SouthCentralUS SharedProd" prod-elita-function-apps.pfx
bash ./kv-import-cert.sh kv-elita-prod-sa-dr rgelitaprod "Assurant Spoke SouthCentralUS SharedProd" prod-elita-function-apps.pfx
bash ./kv-import-cert.sh kv-elita-prod-eu-dr rgelitaprod "Assurant Spoke UKWest SharedProd" prod-elita-function-apps.pfx
bash ./kv-import-cert.sh kv-elita-prod-de-dr rgelitaprod "Assurant Spoke UKWest SharedProd" prod-elita-function-apps.pfx
bash ./kv-import-cert.sh kv-elita-prod-ap-dr rgelitaprod "Assurant Spoke AustraliaEast SharedProd" prod-elita-function-apps.pfx
bash ./kv-import-cert.sh kv-elita-prod-jp-dr rgelitaprod "Assurant Spoke JapanWest SharedProd" prod-elita-function-apps.pfx