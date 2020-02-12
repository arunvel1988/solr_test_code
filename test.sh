#!/bin/bash
solr="localhost:8983"

resp=$(curl --write-out %{http_code} --silent --output /dev/null "http://$solr/")
echo $resp


if [ "$resp" = "200" ]
then
  echo "Solr Server is Up"
else
  exit 1


fi
