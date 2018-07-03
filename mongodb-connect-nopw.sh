export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace default my-release-mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)
echo $MONGODB_ROOT_PASSWORD
kubectl run mongo2-mongodb-client --rm --tty -i --image bitnami/mongodb --command -- mongo admin --host mongo2-mongodb 
#   > show collections
#   > db.orders.find()
#   > exit
