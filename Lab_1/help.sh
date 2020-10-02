#!/bin/bash

help ()
{
echo -e "Functions to use:"
echo -e "calc - calculator, the application displays the sum/difference/product/quotient of the third and fourth arguments"
echo -e "search - the application recursively search the contents of the files in the directory specified by the second argument and displays the strings according to the regular expression specified in the third argument"
echo -e "reverse - the application writes in reverse order the contents of the file whose name is given by the second argument to the file with the name given by the third argument"
echo -e "strlen - the applicatoin displays the number of characters in the string passed as the second argument"
echo -e "log - the application displays lines fron the /var/log/anaconda/X.log file containing warnings and informational message"
echo -e "exit - the application exits with the return code specified by the second parameter"
echo -e "help - the application displays a usage help listing all actions and their arguments"
echo -e "interactive - the application enters an interactive mode of operation, providing the user with an interactive menu with a choice of action"
}
