#!/bin/bash

if [ $1 = "-p" ]
    then
    git add .
    git commit -m "ciao2"
    git push
fi