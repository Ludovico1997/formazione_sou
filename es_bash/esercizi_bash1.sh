## // Touch: Illustrare almeno 2 casi in cui il comando touch può generare una condizione di errore.

touch inacessibile/ciao
touch: inacessibile/ciao: Permission denied

touch file.txt
touch: cannot touch 'file.txt': No space left on device

## // Numero Processi: Contare il numero totale di processi attualmente in esecuzione sulla propria macchina senza utilizzare utility interattive come "top".

ps aux | tail -n +3 | wc -l
        519

## // Kernel Version: Trovare il modo (o più modi) per capire se il Kernel attualmente running è il più recente installato sulla macchina. Scrivere uno script che esegua automaticamente il controllo e risponda TRUE/FALSE.

#!/bin/bash

running_kernel=$(uname -r)

installed_kernels=$(dpkg --list | grep 'linux-image-[0-9]' | awk '{print $2}' | sed 's/linux-image-//' | sort -V)

if [ "$running_kernel" = "$running_kernel" ]; then
  echo "TRUE"
else
  echo "FALSE"
fi


## // Find: Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno.

30 6 * * 1 /usr/bin/find /var/log -type f -mtime +30 -exec /bin/rm {} \;


## // AWK: Scrivere un programma AWK che prende in input un file .csv e stampa il terzo campo solo se viene matchata la stringa "banana".
File di input di esempio:

        apple,banana,strawberry
        pear,peach,lemon
        banana,kiwi,orange
Output desiderato:

        strawberry
        orange


awk -F, '$0 ~ /banana/ { print $3 }' file.csv

## File di input di esempio:

        apple,banana,strawberry
        pear,peach,lemon
        banana,kiwi,orange
        apple,banana,watermelon
        pear,peach,lemon
        banana,kiwi,pear

## Output:
        strawberry
        orange
        watermelon
        pear




