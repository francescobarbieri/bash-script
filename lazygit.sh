#!/bin/bash

currentBranch=$(git symbolic-ref --short -q HEAD)

case "$1" in
    "-p")
        if [ "$2" = "-m" ] && [ ! -z "$3" ]
        then
            git add .
            git commit -m "$3"
            git push origin $currentBranch
        else
            date=$(date)
            git add .
            git commit -m "Changes made on $date"
            git push origin $currentBranch
        fi
    ;;
    
    *)
        echo "Error, type -h for help"
    ;;
esac