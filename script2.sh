#!/bin/bash

echo "El directorio es : "
pwd
echo "Usuario logeado como : "
whoami

#ssh devops@192.168.1.117 'bash -s' < script.sh
#whoami

#ssh devops@192.168.1.118 
#sshpass -p devops ssh devops@192.168.1.118 'bash -s' < script2.sh
cd ~/Sites/sarapico
pwd

echo "Usuario logeado como : "
whoami

echo "Creamos imagenes docker --> debian y sarapico" 
sudo su docker build -t sarapico .
echo "verificar"
pwd
whoami


#Creamos docker sarapico
#sudo docker run --rm -h sarapico.com -p 33:22 -p  4000:80 sarapico
