#!/bin/bash

# Detenemos y Eliminamos todos los contenedores creados
cd /home/devops/Sites/sarapico
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)

#Eliminamos las imagenes debian y sarapico creadas
sudo docker rmi debian
sudo docker rmi sarapico
