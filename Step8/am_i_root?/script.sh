#!/bin/bash
# am-i-root.sh:   Am I root or not?
 
ROOT_UID=0   # Root has $UID 0.
 
if [ "$UID" -eq "$ROOT_UID" ]  # Will the real "root" please stand up?
then
  echo "You are root."
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi
 
exit 0
 
# ============================================================= #
# Code below will not execute, because the script already exited.
 
# An alternate method of getting to the root of matters:
 
ROOTUSER_NAME=root
 
username=`id -nu`              # Or...   username=`whoami`
if [ "$username" = "$ROOTUSER_NAME" ]
then
  echo "Rooty, toot, toot. You are root."
else
  echo "You are just a regular fella."
fi


Risposta ====>  Il codice qui sopra mostra due modi per mostrare se il nostro utente è o non è Root. Nel primo caso usiamo l'id mentre nel secondo usiamo il risultato del comando whoami che indica Root o il nome dell'utente.
