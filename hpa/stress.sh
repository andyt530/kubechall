helm install stable/metrics-server
helm install stable/metrics-server --namespace cpu-example
# don't install helm
kubectl get apiservices | grep metrics
kubectl create namespace cpu-example
kubectl create -f stress.yaml --namespace=cpu-example
kubectl top pod cpu-demo --namespace cpu-example
