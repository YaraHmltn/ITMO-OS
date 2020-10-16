#!/bin/bash

    if [ -d $1 || -d $2 ]
    then echo "It is a directory"
    exit 2
    fi
    if ! [ -s $1 ]
    then echo "File is empty"
    exit 3
    fi
    rev "$1" > tmp
    tac tmp > "$2"
    rm tmp
