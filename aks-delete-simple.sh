az account set -s "Cloud Services Dev"


echo Delete resource group... (approx. 16 minutes)
time az group delete --name rg-atk8s --yes

echo All done.
