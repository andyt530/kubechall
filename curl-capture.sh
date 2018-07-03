IP=`kubectl get svc captureorder-svc | grep captureorder-svc | awk '{print $4}'`
echo $IP
sl="\134"
#
comm=`printf 'curl -X POST \"http://%s/v1/order/\" -H  \"accept: application/json\" -H  \"content-type: application/json\" -d \"{  %b\"EmailAddress%b\": %b\"t1@me.com%b\", %b\"ID%b\": %b\"1%b\",  %b\"PreferredLanguage%b\": %b\"eng%b\",  %b\"Product%b\": %b\"bike2%b\",  %b\"Source%b\": %b\"Halfords%b\",  %b\"Status%b\": %b\"ordered%b\",  %b\"Total%b\": 2 } \" '  $IP $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl $sl` 
echo $comm
eval $comm
#
