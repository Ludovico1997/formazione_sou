#!/bin/bash

# //EXTENDED REGEX: Utilizzare il comando egrep per risolvere i seguenti esercizi (dando esempi di possibili input):


# Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole
grep -i "ciao" file1.txt
# Questo comando mi va a prendere tutte le righe del file "file1.txt" contenenti la parola "ciao". Con il comando -i va a disattivare il case sensitive
    # output
        # ciao
        # !ciao.
        # ciao1
        # Ciao

#Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'

grep "#" script.sh 

#Questo comando va a stampare le righe contenenti il carattere speciale "#" nel file "script.sh"
    #output
        # //EXTENDED REGEX: Utilizzare il comando egrep per risolvere i seguenti esercizi (dando esempi di possibili input):
        #     Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole
        #     Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'
        #     Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte
        #     Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange
grep "#" script.sh | sed -i '/#/d' script.sh 
cat script.sh 

#Con questi due comandi vado a cancellare tutte le righe contenenti i caratteri "#" e vado a stampare il file quindi senza commenti.
    # output
        #echo "ciao"

# Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte
egrep -i 'a.*a.*a' filea.txt 
#OR
grep -E -i 'a.*a.*a' filea.txt 

#con questi comandi vado a stampare solo le righe dove troviamo dalle 3 alle 6 "a"

    # output
        #iaaa
        #oaoaoaioaoaoaoa
        # aooooaaa
        # AAAA
        # ciaaaao
        # buona sera come va??

# Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange
cat fruit.txt 
    #output
        # pineapple
        # dragonfruit
        # Apple
        # Banana
        # Orange
        # Pear
        # Grapes
        # Mango
        # Strawberry
        # Kiwi
        # Peach
grep -E -i "apple|pear|orange" fruit.txt 

#con questo comando vado a stampare solo le stringhe contenenti le parole "apple", "orange", "pear". Con l'opzione -E vado serve a utilizzare espressioni regolari estese (alternativa ad egrap ormai deprecato).
    #output
        # Apple
        # Orange
        # Pear


