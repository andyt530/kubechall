!/bin/bash
az account set -s "Cloud Services Dev"


#Begin deployment
echo Creating resource group...
az group create --name rg-atk8s --location westeurope

echo "Creating AKS cluster... (about 13 minutes)"
time az aks create --resource-group rg-atk8s --name atk8s -k "1.8.11" -s Standard_DS2_v2 --node-count 2 --generate-ssh-keys

echo Getting credentials...
az aks get-credentials --resource-group rg-atk8s --name atk8s

echo All done.
