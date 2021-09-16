#!/bin/bash

# Eliminamos todos los contenedores creados
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
