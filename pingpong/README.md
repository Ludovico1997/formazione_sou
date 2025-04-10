# PING PONG.

## Come funziona ?

### Ho creato tramite Vagrant ([Vagrantfile](Vagrantfile)) 2 VM Ubuntu, ho fatto un minimo provision con Ansible ([Playbook](install_docker.yml)), aggiornando i pacchetti, installando Docker e abilitandolo.

### Tramite lo script in Python ([script in Python](script.py)) ho creato un ciclo infinito in cui verrà eseguito il container in una VM e stoppato nell'altra.
### Questo Up and Down viene eseguito ogni 60 secondi, il processo non andra in background ma occuperà la tua shell stampando puntini fino al nuovo switch.

!!! warning
    **Attenzione:** Per funzionare deve essere installata la libreria esterna di Python "Paramiko"
    **NB:** C'è bisogno di configurare correttamente le chiavi SSH e il percorso delle stesse nel file script.py

### Installazione

Segui questi passi per installare il progetto:

1. Clona il repository
   ```bash
   git clone https://github.com/Ludovico1997/formazione_sou/tree/main/pingpong