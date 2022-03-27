#!/usr/bin/env bash

echo 'welcome to bash'

if [ $1 = '-ip' ]
    then
        record=$(curl -s http://ip-api.com/json/)

        status = $record | jq '.status'
        country= $record | jq '.country'

        echo $record
        echo -e "Status: $status" 
fi