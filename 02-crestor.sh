# must be in the MC- resource group - standard storage as files doesn't support premium (yet)
cl="atk8s"
rgs=`az group list -o table | grep MC_ | grep $cl | awk '{print $1}'`
az storage account create --resource-group $rgs --name atstoraks --sku Standard_LRS
