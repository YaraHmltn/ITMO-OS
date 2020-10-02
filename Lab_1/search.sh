#!/bin/bash

search ()
{
    if [ -d "$1"]
    then echo "This is not directory">&2;
    exit 2
    fi
    grep -r "$2" "$1" 2>/dev/null
}
