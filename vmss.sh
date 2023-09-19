az vmss extension set \
  --publisher Microsoft.Azure.Extensions \
  --version 2.0 \
  --name CustomScript \
  --resource-group RG-PEPSICO-SHARED \
  --vmss-name private-azure-pool \
  --settings '{"fileUris": ["https://raw.githubusercontent.com/lucasdk3/agents-scripts/main/install-maven.sh"],"commandToExecute": "./install-maven.sh"}'