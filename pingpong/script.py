import paramiko
import subprocess
import time

#Definisco le costanti fondamentali.
IP1 = "192.168.33.20"
IP2 = "192.168.33.21"
IP_LOOPBACK = "127.0.0.1"
NODE1_PORT = 2222
NODE2_PORT = 2200
private_key_path1 = "/Users/ludovicoparis/formazione_sou/pingpong/.vagrant/machines/node1/virtualbox/private_key"
private_key_path2 = "/Users/ludovicoparis/formazione_sou/pingpong/.vagrant/machines/node2/virtualbox/private_key"
USERNAME = "vagrant"
PASSWORD = "vagrant"
art = r"""
🏓    o    🏓
"""



client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# funzione per la connessione ssh deve essere passata chiave e porta ssh.
def connessione_ssh(porta_ssh, chiave):
    client.connect(hostname=IP_LOOPBACK, username=USERNAME, key_filename=chiave, port=porta_ssh)
    # print("Connessione riuscita!")

#Crea un Docker ealen/echo-server chiamato my_pingpong.
def creazione_container():
    stdin, stdout, stderr = client.exec_command('sudo docker run -d -p 3000:80 --name my_pingpong ealen/echo-server')
    # print(stdout.read().decode())

#Stoppa il container.
def stoppa_container():
    stdin, stdout, stderr = client.exec_command('sudo docker stop my_pingpong') 
    # print(stdout.read().decode())

#starta il container.
def starta_container():
    stdin, stdout, stderr = client.exec_command('sudo docker start my_pingpong')
    # print(stdout.read().decode())

#Controllo se nelle mie VM effettivamente ho in run Docker
def controllo_esistenza_container():
    stdin, stdout, stderr = client.exec_command('sudo docker ps -a | grep -o "my_pingpong"')
    return stdout.read().decode()

# Controllo lo stato del container con un curl direttamente dalla mia macchina. 
# In questo caso faccio il curl sull'ip della VM specificando la porta 3000 che è quella mappata su quella del conteiner
def controllo_stato_container(ip):
    result = subprocess.run("curl -v http://"+ip+":3000", capture_output=True, text=True, shell=True)
    return result.returncode

# Con questa funzione stoppo il docker acceso e starto quello spento sull'altra macchina.
# Questa funzione fa anche il controllo di esistenza del container.
def up_down():
    if controllo_stato_container(IP1) != 0:
        connessione_ssh(NODE1_PORT, private_key_path1)
        if controllo_esistenza_container() == "":
            creazione_container()
            print("il container dell'ip " + IP1 + " è UP!")
        else:
            starta_container()
            print("il container dell'ip " + IP1 + " è UP!")
        client.close
        connessione_ssh(NODE2_PORT, private_key_path2)
        if controllo_esistenza_container() != "":
            stoppa_container()
    else:
        connessione_ssh(NODE1_PORT, private_key_path1)
        stoppa_container()
        client.close()
        connessione_ssh(NODE2_PORT, private_key_path2)
        if controllo_esistenza_container() == "":
            creazione_container()
            print("il container dell'ip " + IP2 + " è UP!")
        else:
            starta_container()
            print("il container dell'ip " + IP2 + " è UP!")


while True:
    print("sto eseguendo il ping pong")
    print(art)
    up_down()
    for _ in range(10):
        print(".", end="", flush=True)
        time.sleep(1)
    print()

