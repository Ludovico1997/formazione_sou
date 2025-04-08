# Esercizi in bash.

## Esercizi Regex.

- [Esercizi Regex](es_extended_regex.sh)

### Comandi principali Extended Regex.

```bash
#!/bin/bash
grep -i "ciao" file1.txt
grep "#" script.sh 
grep "#" script.sh | sed -i '/#/d' script.sh 
egrep -i 'a.*a.*a' filea.txt 
#OR
grep -E -i 'a.*a.*a' filea.txt
grep -E -i "apple|pear|orange" fruit.txt.

```

- [esercizio regex IPV4](es_ipv4_regex.sh)


### Regex per validare indirizzi IP v4.


```bash
^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$
```


- [esercizi bash](esercizi_bash_random.sh)

### Comandi esercizio random bash

```bash
#!/bin/bash

touch inacessibile/ciao
ps aux | tail -n +3 | wc -l
#----------------------------
running_kernel=$(uname -r)

installed_kernels=$(dpkg --list | grep 'linux-image-[0-9]' | awk '{print $2}' | sed 's/linux-image-//' | sort -V)

if [ "$running_kernel" = "$running_kernel" ]; then
  echo "TRUE"
else
  echo "FALSE"
fi
#----------------------------
30 6 * * 1 /usr/bin/find /var/log -type f -mtime +30 -exec /bin/rm {} \;
#----------------------------
awk -F, '$0 ~ /banana/ { print $3 }' file.csv

```
