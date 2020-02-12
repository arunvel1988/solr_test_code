#!/bin/bash

#Simple script to check if solr is running or not
#Enter IP Address or FQDN of Solr Host
solr_host="http://localhost:8984/solr/"

#Using curl to hit FQDN and check response code of  Solr Server
resp=$(curl --write-out %{http_code} --silent --output /dev/null "$solr")
#Saving code in resp variable
echo $resp                                                      

#Normal if else condition to check if response code is 200 or not
if [ "$resp" = "200" ]
then
  echo "Solr Server is Up"
else
  echo "Solr server not running"


fi
