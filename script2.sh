#!/bin/bash

echo "El directorio es : "
pwd
echo "Usuario logeado como : "
whoami

#ssh devops@192.168.1.117 'bash -s' < script.sh
#ssh devops@192.168.1.118 
#sshpass -p devops ssh devops@192.168.1.118 'bash -s' < script2.sh

cd /home/devops/Sites/sarapico
pwd

echo "Creamos Imagenes de docker --> debian y sarapico" 

docker build -t sarapico .

echo "Creamos docker sarapico"
docker run --rm -h sarapico.com -p 33:22 -p  4000:80 sarapico

exit
