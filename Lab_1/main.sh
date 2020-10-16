#!/bin/bash

if  [[ "$1" -ne "calc" ]] || [[ "$1" -ne "search" ]] || [[ "$1" -ne "revers" ]] || [[ "$1" -ne "strlen" ]] || [[ "$1" -ne "log" ]] || [[ "$1" -ne "exit" ]] || [[ "$1" -ne "help" ]] || [[ "$1" -ne "interactive" ]]
then echo "There is no such function"
exit 2
fi

case "$1" in
calc)
        if [[ $# -eq 4 ]]
        then ./calc.sh $2 $3 $4
        else echo "3 arguments required"
        exit 1
        fi
;;
search)
        if ! [ -r "$2" ]
        then echo "No access"
        exit 2
        fi
        if [[ $# -eq 3 ]]
        then ./search.sh $2 $3
        else echo "2 arguments required"
        exit 1
        fi
;;
revers)
        if [[ $# -eq 3 ]]
        then ./revers $2 $3
        else echo "2 arguments required"
        exit 1
        fi
;;
strlen)
        if [[ $# -eq 2 ]]
        then ./strlen
        else echo "1 arguments required"
        exit 1
        fi
;;
log)
        if [$# -eq 1]
        then ./log
        else echo "You want too much"
        exit
        fi
;;

exit)
        if [[ $# -eq 2 ]]
        if [[ $2 =~ ^[+-]?[0-9]+$ ]]
        then ./ex.sh $2
        else echo "arg is not int"
        fi
        if [[ $# -eq 1 ]]
        then exit 0
        fi
        if [[ $# -ge 3 ]]
        then echo "1 argument required"
        exit 1
        fi
;;
help)
        if [[ $# -eq 1 ]]
        then ./help.sh
        else echo "You want too much"
        exit 1
        fi
;;
interactive)
        if [[ $# -eq 1 ]]
        then ./interactive
        else echo "You want too much"
        exit 1
        fi
;;
esac
