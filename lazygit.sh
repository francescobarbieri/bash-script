#!/bin/bash

if [ $1 = "-p" ]
    then
    git add .
    git commit -m "test2"
    git push
fi