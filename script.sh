#!/bin/bash

echo "El directorio es : "
cd $home/Sites/sarapico
pwd

echo "Usuario logeado como : "
whoami

#Creamos imagenes docker --> debian y sarapico 
sudo docker build -t sarapico .

#Creamos docker sarapico
sudo docker run --rm -h sarapico.com -p  4000:80 sarapico
