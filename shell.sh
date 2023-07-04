 
 
GROUP="MyResourceGroup"

az storage account create --name apagajulho --location westus --resource-group $GROUP --sku Standard_LRS --allow-blob-public-access false

 
az functionapp create --resource-group $GROUP --consumption-plan-location westus --runtime dotnet-isolated --functions-version 4 --name appjulioapagar --storage-account apagajulho 
 
 
 
 exit
 
 az group create --name AzureFunctionsQuickstart-rg --location westus
 az storage account create --name apagajulho --location westus --resource-group AzureFunctionsQuickstart-rg --sku Standard_LRS --allow-blob-public-access false

az functionapp create --resource-group AzureFunctionsQuickstart-rg --consumption-plan-location westus --runtime dotnet-isolated --functions-version 4 --name appjulioapagar --storage-account apagajulho

func azure functionapp publish appjulioapagar

exit

az group delete --name AzureFunctionsQuickstart-rg
