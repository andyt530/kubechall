# brew install/upgrade helm
kubectl apply -f cluster-admin.yaml
kubectl create serviceaccount -n kube-system tiller
kubectl create clusterrolebinding tiller-binding --clusterrole=cluster-admin --serviceaccount kube-system:tiller
helm init --service-account tiller
kubectl get pods --namespace kube-system | grep tiller
