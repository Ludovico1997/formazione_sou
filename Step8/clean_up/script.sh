# Cleanup
# Run as root, of course.
 
cd /var/log
#si va nella cartella /var/log 
cat /dev/null > messages
# sovrascrive il file messages con il contenuto di /dev/null che è vuoto. praticamente va a pulire il file.
cat /dev/null > wtmp
#uguale a sopra sbianca il file.
echo "Log files cleaned up."


risultato : i file messages e wtmp vengono svuotati, rimangono tali ma non contengono più nulla al proprio interno.
