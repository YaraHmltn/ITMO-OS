#!/bin/bash

if [[ -d "$1" ]]
then echo "This is not directory"
exit 2
fi

if ! [[ -e "$1" ]]
then echo "Not enough rights"
exit 3
fi

if [[ -r "$1" ]]
then echo "The file does not exist"
exit 3
fi

grep -r -s "$2" "$1"
