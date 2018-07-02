IP=`kubectl get svc captureorder-svc | grep captureorder-svc | awk '{print $4}'`
echo $IP
#comm=`printf "curl -X POST \"http://%s/v1/order/\" -H  \"accept: application/json\" -H  \"content-type: application/json\" -d "{  \"EmailAddress\": \"t1@me.com\",  \"ID\": \"1\",  \"PreferredLanguage\": \"eng\",  \"Product\": \"bike2\",  \"Source\": \"Halfords\"  ,  \"Status\": \"ordered\",  \"Total\": 2}\" " $IP`
sl="\134"
#
comm=`printf 'curl -X POST \"http://%s/v1/order/\" -H  \"accept: application/json\" -H  \"content-type: application/json\" -d \"{  %b\"EmailAddress%b\": %b\"t1@me.com%b\", %b\"ID%b\": %b\"1%b\",  %b\"PreferredLanguage%b\": %b\"eng%b\",  %b\"Product%b\": %b\"bike2%b\",  %b\"Source%b\": %b\"Halfords%b\",  %b\"Status%b\": %b\"ordered%b\",  %b\"Total%b\": 2 } \" '  $IP $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl` 
echo $comm
eval $comm
#
#curl -X POST "http://23.101.66.125/v1/order/" -H  "accept: application/json" -H  "content-type: application/json" -d "{  \"EmailAddress\": \"t1@me.com\",  \"ID\": \"1\",  \"PreferredLanguage\": \"eng\",  \"Product\": \"bike2\",  \"Source\": \"Halfords\"  ,  \"Status\": \"ordered\",  \"Total\": 2}" 
#curl -X POST "http://$IP/v1/order/" -H  "accept: application/json" -H  "content-type: application/json" -d "{  \"EmailAddress\": \"t1@me.com\",  \"ID\": \"1\",  \"PreferredLanguage\": \"eng\",  \"Product\": \"bike2\",  \"Source\": \"Halfords\"  ,  \"Status\": \"ordered\",  \"Total\": 2}" 
#curl -X POST "http://23.101.66.125/v1/order/" -H  "accept: application/json" -H  "content-type: application/json" -d "{  \"EmailAddress\": \"string\",  \"ID\": \"string\",  \"PreferredLanguage\": \"string\",  \"Product\": \"string\",  \"Source\": \"string\",  \"Status\": \"string\",  \"Total\": 0}"
