#!/bin/bash

if [ $1 = "-p" ]
then
    if [ $2 = "-m" ] && [ -z "$3" ]
    then
        git add .
        git commit -m "$3"
        git push
    else
        date=$(date)
        git add .
        git commit -m "Changes made on $date"
        git push
    fi
else
    echo "Error"
fi