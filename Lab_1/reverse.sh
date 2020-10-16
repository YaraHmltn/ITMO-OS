#!/bin/bash

if [[ -d $1 || -d $2 ]]
then echo "It is a directory"
exit 2
fi

if ! [[ -e $1 || -e $2 ]]
then echo "The file does not exist"
exit 3
fi

if ! [[ -r $1 ]]
then echo "Not enough rights to read"
exit 4
fi

if ! [[ -w $2 ]]
then echo "Not enough rights to write"
exit 4
fi

rev "$1" > tmp
tac tmp > "$2"
rm tmp
