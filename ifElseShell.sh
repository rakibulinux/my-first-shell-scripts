#!/bin/bash

r=7
a=3

if [ $r -eq $a ]; then
        echo "Rakib"
else
        echo "AnNisa"
fi

m=1
n=2

if [ $r -gt $a]; then
        echo "Both variables are the same"
else
        echo "Both variables are different"
fi

read name

if [ $name == 0 ]; then
        echo "Pass"
else
        echo "Falied"
fi
