#!/bin/bash
 
echo hello
echo $?    # Exit status 0 returned because command executed successfully.
 
lskdf      # Unrecognized command.
echo $?    # Non-zero exit status returned -- command failed to execute.
 
echo
 
exit 113   # Will return 113 to shell.
           # To verify this, type "echo $?" after script terminates.
 
#  By convention, an 'exit 0' indicates success,
#+ while a non-zero exit value means an error or anomalous condition.
#  See the "Exit Codes With Special Meanings" appendix.




risultato ====>   In questo script si vedono i vari return code.
Nel primo caso restituisce zero in quanto il comando ha successo.
Nel secondo caso restituisce un valore diverso da zero.
Abbiamo in fine un exit return di 113.
