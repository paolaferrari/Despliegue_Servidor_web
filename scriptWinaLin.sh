#!/bin/bash 
# Transferencia desde Git Local a Servidor Web remoto
#cd /home/devops/Sites/sarapico
echo "El directorio es : "
pwd
echo "Usuario logeado como : "
whoami
#desde linux
scp -rp pao@192.168.56.103:~/Sites/sarapico 192.168.56.103:D:\git_grandys\dockerfiletareagrupal\Despliegue_Servidor_web\scriptWinaLin.sh 
# desde windows
#scp -rp D:\git_grandys\dockerfiletareagrupal\Despliegue_Servidor_web\scriptWinaLin.sh -p devops devops@192.168.1.118:~/Sites/sarapico
