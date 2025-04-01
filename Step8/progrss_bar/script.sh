#! /bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by ABS Guide author).
# Used in ABS Guide with permission (thanks!).
 
# Invoke this script with bash. It doesn't work with sh.
 
interval=1
long_interval=10
 
{
     trap "exit" SIGUSR1
     sleep $interval; sleep $interval
     while true
     do
       echo -n '.'     # Use dots.
       sleep $interval
     done; } &         # Start a progress bar as a background process.
 
pid=$!
trap "echo !; kill -USR1 $pid; wait $pid"  EXIT        # To handle ^C.
 
echo -n 'Long-running process '
sleep $long_interval
echo ' Finished!'
 
kill -USR1 $pid
wait $pid              # Stop the progress bar.
trap EXIT
 
exit $?

risultato =====> Lo script simula un processo e visualizza una barra di progresso che stampa dei punti mentre il processo è in esecuzione. Alla fine del processo, la barra di progresso si ferma, e lo script termina.
con trap "echo !; kill -USR1 $pid; wait $pid" mi va a killare il processo in background con il segnale EXIT (ctr+C). eliminando questo comando lo script deve essere stoppato manualmente tramite il kill.
Mi va quindi ad aspettare la fine del processo in background per killarlo.
