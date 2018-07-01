echo "Enter the docker password (ATterrformTemp SPN) >" 
read -s DOCKER_PASSWORD
echo $DOCKER_PASSWORD
kubectl create secret docker-registry acrsecret --docker-server atacr.azurecr.io --docker-email dwpgovid@outlook.com --docker-username=1454fab7-449e-4eb8-9bda-cd84be6e015a --docker-password $DOCKER_PASSWORD
kubectl get secret acrsecret
