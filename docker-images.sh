#username is ATterraformTemp SPN
docker login atacr.azurecr.io -u 1454fab7-449e-4eb8-9bda-cd84be6e015a
docker image list
docker pull shanepeckham/captureorderack:v9
docker pull shanepeckham/rabbitmqlistenerack:v8
docker pull shanepeckham/fulfillorderack:v8
docker tag shanepeckham/captureorderack:v9 atacr.azurecr.io/captureorderack
docker tag shanepeckham/rabbitmqlistenerack:v8 atacr.azurecr.io/rabbitmqlistenerack
docker tag shanepeckham/fulfillorderack:v8 atacr.azurecr.io/fulfillorderack
docker push atacr.azurecr.io/captureorderack
docker push atacr.azurecr.io/rabbitmqlistenerack
docker push atacr.azurecr.io/fulfillorderack
