##//REGEX: Scrivere una o piu' espressioni regolari (in OR) che matchino tutti i possibili indirizzi ipv4 in decimal dottet notation.

^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$


#Questa regex è un modo efficace per validare un indirizzo IP v4, assicurandosi che ogni parte del numero rientri nell'intervallo corretto (0-255) e che il formato dell'IP sia corretto con i separatori (punti) giusti tra i numeri.