#!/bin/bash

log ()
{
Warning = $(cat /var/log/anaconda/X.log | awk '/\[ && /WW/')
Information= $(cat /var/log/anaconda/X.log | awk '/\[/ && /II/')
echo -e "${Warning//"(WW)"/" \e[1;33mWarning:\e[0m"}"
echo -e "${Infornation//"(II)"/"\e[1;36mInformation:\e[0m"}"
}
