kubectl delete -f captureorderweb-service.yaml
kubectl delete -f fulfillorderweb-service.yaml
kubectl delete -f captureorderweb-deployment.yaml
kubectl delete -f fulfillorderweb-deployment.yaml
kubectl delete -f rabbitmqlistenerweb-deployment.yaml
helm del --purge rabbit2 
helm del --purge mongo2 
kubectl delete sts --cascade=false rabbit2-rabbitmq
kubectl delete pod rabbit2-rabbitmq-0
helm ls
