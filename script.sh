#!/bin/bash

# Eliminamos todos los contenedores creados
cd /home/devops/Sites/sarapico
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
