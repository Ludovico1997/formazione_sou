#!/bin/bash
# Naked variables
 
echo
 
# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
 
# Assignment
a=879
echo "The value of \"a\" is $a."
 
# Assignment using 'let'
let a=16+5
echo "The value of \"a\" is now $a."
 
echo
 
# In a 'for' loop (really, a type of disguised assignment):
echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 11
do
  echo -n "$a "
done
 
echo
echo
 
# In a 'read' statement (also a type of assignment):
echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a."
 
echo
 
exit 0


risultato =====>  Questo script mostra diversi modi di assegnare e usare variabili in Bash. 
Nel primo caso assegno un valore alla variabile di 879.
Nel secondo caso let esegue un operazione (16+5) ed il risultato viene assegnato alla variabile a
nel terzo caso la variabile a viene usata all'interno del ciclo for e stamperà 7, 8, 9, 11.
Nel quarto caso permette all' utente di inserire il valore di a, grazie all'opzione "read".

