#!/bin/bash

if [[ "$1" -ne "sum" ]] && [[ "$1" -ne "sub" ]] && [[ "$1" -ne "mul" ]] && [["$1" -ne "div"]]
then echo "First argument is invalid"
exit 2
fi
if [[ "$1" -eq "div" ]] && ( [[ "$3" -eq "0" ]] || [[ "$3" -eq "-0" ]] || [[ "$3" -eq "+0" ]] )
then echo "Cannot div by zero"
exit 3
fi
if ! [[ $2 =~ ^[-]?[0-9] ]] || ! [[ $3 =~ ^[-]?[0-9] ]]
then echo "Not an integer entered"
exit 4
fi

case $1 in
    sum) echo $(($2+$3));;
    sub) echo $(($2-$3));;
    mul) echo $(($2*$3));;
    div) echo $(($2/$3));;
esac
