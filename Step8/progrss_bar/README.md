<Spiegazione Script>

Lo script simula un processo e visualizza una barra di progresso che stampa dei punti mentre il processo è in esecuzione.
Alla fine del processo, la barra di progresso si ferma, e lo script termina.
con trap "echo !; kill -USR1 $pid; wait $pid" mi va a killare il processo in background con il segnale EXIT (ctr+C).
Mi va quindi ad aspettare la fine del processo in background per killarlo.
Eliminando questo comando lo script deve essere stoppato manualmente tramite il kill.

