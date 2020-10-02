#!/bin/bash

ex ()
{
if [[ $1 =~ ^[+-]?[0-9]+$ ]]
then exit $1
else echo "Code is not numeric"
exit 2
fi
}
