#!/bin/ash

# allow proxy container to start
sleep 15

HTTP_STATUS_CODE=0
COUNT=0
MAX_TRIES=5
TEST_URL=http://proxy:80/

while [ ${HTTP_STATUS_CODE} -ne 302 ] && [ ${COUNT} -lt ${MAX_TRIES} ] ;
do
  HTTP_STATUS_CODE=`curl -A "Test CURL" -k -s -o /dev/null -w %{http_code} ${TEST_URL}`
  let COUNT=${COUNT}+1
  sleep 4
done

if [ ${HTTP_STATUS_CODE} -ne 302 ] ;
then
  echo "Unable to verify HTTP proxy is up."
  return 1;
fi

return 0;