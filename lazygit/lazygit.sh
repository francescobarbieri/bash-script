#!/bin/bash

if [ $1 = "-p" ]
    then
    git add .
    git commit -m $2
    git push
fi