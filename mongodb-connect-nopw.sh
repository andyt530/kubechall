export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace default my-release-mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)
echo $MONGODB_ROOT_PASSWORD
kubectl run mongo2-mongodb-client --rm --tty -i --image bitnami/mongodb --command -- mongo admin --host mongo2-mongodb 
# simple CSE connect:
# export POD_NAME=$(kubectl get pods --namespace default -l "app=mongodb" -o jsonpath="{.items[0].metadata.name}")
# kubectl port-forward --namespace default $POD_NAME 27017:27017 &
# mongo --host 127.0.0.1
#   > show collections
#   > db.orders.find()
#   > exit
