#!/bin/bash

echo -e "I'm very tired, just choose a letter"
echo -e "a. calc"
echo -e "b. search"
echo -e "c. reverse"
echo -e "d. strlen"
echo -e "e. log"
echo -e "f. exit"
echo -e "g. help"
read letter
case "$letter" in
    a | calc)
        echo "Enter function"
        read func
        echo "Enter the first argument"
        read first
        echo "Enter the second argument"
        read second
        source ./calc.sh $func $first $second
        interactive
    ;;
    b | search)
        echo "Enter directory"
        read name
        echo "Enter key"
        read key
        source ./search.sh $name $key
        interactive
    ;;
    c | reverse)
        echo "Enter first file name"
        read input
        echo "Enter second file name"
        read output
        source ./reverse.sh $input $output
        interactive
    ;;
    d | log)
        ./log.sh
        interactive
    ;;
    e | help)
        cat help.txt
        interactive
    ;;
    f | exit)
        echo "Enter return code"
        read code
        if [[ -z $code ]]
        thren exit 0
        fi
        if ! [[ $code =~ ^[+-]?[0-9] ]]
        then echo "Not a number enter"
        else exit $code
        fi
        interactive
    ;;
esac
