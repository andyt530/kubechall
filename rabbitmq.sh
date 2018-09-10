helm list
helm delete team2rabbit --purge
helm install --name rabbit2 --set rabbitmq.username=admin,rabbitmq.password=secretpassword stable/rabbitmq
# CSE - note rbac switch
# helm install --name rabbit --set rabbitmq.username=admin,rabbitmq.password=my-password,rbacEnabled=false stable/rabbitmq --version 0.8.1
# helm install --name rabbit --set rabbitmq.username=admin,rabbitmq.password=my-password,rbacEnabled=false stable/rabbitmq
#  kubectl get statefulsets