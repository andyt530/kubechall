while true; do curl -s -X POST "http://104.40.249.6/v1/order/" -H  "accept: application/json" -H  "content-type: application/json
" -d "{  \"EmailAddress\": \"t1@me.com\",  \"ID\": \"1\",  \"PreferredLanguage\": \"eng\",  \"Product\": \"bike2\",  \"Source\": \"
/ # ,  \"Status\": \"ordered\",  \"Total\": 2}"   > /dev/null ; done 
