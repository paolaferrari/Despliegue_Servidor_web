#!/bin/bash
cd /home/pao/Sites/sarapico
echo "El directorio es : "
pwd


#ssh devops@192.168.1.117 'bash -s' < script.sh
#ssh devops@192.168.1.118 
#sshpass -p devops ssh devops@192.168.1.118 'bash -s' < script2.sh


echo "Creamos Imagenes de docker --> debian y sarapico" 

docker build -t sarapico .

echo "Creamos docker sarapico con --rm establece que una vez detenido se borra"
#docker run --rm  -h sarapico.com -p 33:22 -p  4000:80 sarapico
docker run -h sarapico.com -p 33:22 -p  4000:80 sarapico
