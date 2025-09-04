# TEST
query="{sid:sid,thumbprint:x509ThumbprintHex,subject:policy.x509CertificateProperties.subject}"
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-EU --subscription "Assurant Spoke UKSouth SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-us --subscription "Assurant Spoke NorthCentralUS SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-sa --subscription "Assurant Spoke NorthCentralUS SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-eu --subscription "Assurant Spoke UKSouth SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-de --subscription "Assurant Spoke Germany West Central SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-ap --subscription "Assurant Spoke AustraliaSouthEast SharedNonProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-test-jp --subscription "Assurant Spoke JapanEast SharedNonProd" --query $query
# MODEL
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-us --subscription "Assurant Spoke NorthCentralUS SharedProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-sa --subscription "Assurant Spoke NorthCentralUS SharedProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-eu --subscription "Assurant Spoke UKSouth SharedProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-de --subscription "Assurant Spoke Germany West Central SharedProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-ap --subscription "Assurant Spoke AustraliaSouthEast SharedProd" --query $query
az keyvault certificate show --name elita-function-apps --vault-name kv-elita-modl-jp --subscription "Assurant Spoke JapanEast SharedProd" --query $query