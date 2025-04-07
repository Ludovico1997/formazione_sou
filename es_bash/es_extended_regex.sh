# //EXTENDED REGEX: Utilizzare il comando egrep per risolvere i seguenti esercizi (dando esempi di possibili input):


# Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole

    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ grep -i "ciao" file1.txt
        ciao
        !ciao.
        ciao1
        Ciao

#Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'

    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ grep "#" script.sh 
        # //EXTENDED REGEX: Utilizzare il comando egrep per risolvere i seguenti esercizi (dando esempi di possibili input):
        #     Matchare sequenze alfabetiche di almeno un carattere, sia maiuscole che minuscole
        #     Togliere tutte le righe di commento di uno script Bash matchando le righe che iniziano con '#'
        #     Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte
        #     Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange
    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ grep "#" script.sh | sed -i '/#/d' script.sh 
    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ cat script.sh 
        input:
            grep -i "ciao" file1.txt 
        output:
            ciao
            Ciao

# Matchare in un file le righe che contengono sequenze di 'a' ripetute da 3 a 6 volte

    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ cat filea.txt 
        a
        ai
        iaaa
        oaoaoaioaoaoaoa
        aooooaaa
        AAAA
        ciaaaao
        buona sera come va??
        ciaoa
        [ludo@Redmi-Note-13-Pro-5G prove_regex]$ egrep -i 'a.*a.*a' filea.txt OR grep -E -i 'a.*a.*a' filea.txt 
        iaaa
        oaoaoaioaoaoaoa
        aooooaaa
        AAAA
        ciaaaao
        buona sera come va??

# Matchare in un file tutte le righe che contengono una delle seguenti parole: apple, pear, orange

    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ cat fruit.txt 
        pineapple
        dragonfruit
        Apple
        Banana
        Orange
        Pear
        Grapes
        Mango
        Strawberry
        Kiwi
        Peach
    [ludo@Redmi-Note-13-Pro-5G prove_regex]$ grep -E -i "apple|pear|orange" fruit.txt 
        Apple
        Orange
        Pear


