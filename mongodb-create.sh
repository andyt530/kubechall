echo "check tiller"
kubectl get pods --namespace kube-system
helm install --name mongo2 stable/mongodb --set usePassword=false
# wait 2 mins then try to connect
