helm install --name rabbit2 --set rabbitmq.username=admin,rabbitmq.password=secretpassword stable/rabbitmq
helm install --name mongo2 stable/mongodb --set usePassword=false
# wait for mongodb
sleep 240  
kubectl create -f fulfillorderweb-deployment.yaml
kubectl create -f fulfillorderweb-service.yaml
kubectl create -f rabbitmqlistenerweb-deployment.yaml
kubectl create -f captureorderweb-deployment.yaml
kubectl create -f captureorderweb-service.yaml