helm list
helm delete team2rabbit --purge
helm install --name rabbit2 --set rabbitmq.username=admin,rabbitmq.password=secretpassword stable/rabbitmq
