#!/bin/bash 
# Transferencia desde Git Local a Servidor Web remoto

echo "El directorio es : "
pwd
echo "Usuario logeado como : "
whoami

scp -rp devops@192.168.1.118:~/Sites/sarapico 192.168.1.100:D:\git_grandys\dockerfiletareagrupal\Despliegue_Servidor_web\scriptWinaLin.sh 
