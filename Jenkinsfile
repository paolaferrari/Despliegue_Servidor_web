pipeline {
  agent any
  stages {
    stage('Git sincronizar') {
          steps {
            echo 'Sincronizacion Git correcta.'
            input 'Esperando confirmacion manual'
          }
        }
    stage('Borrando imagenes y contenedor') {
      steps {
        echo 'Borro imagenes y contenedores ?'
        sh 'script.sh'
        echo 'Imagenes y contenedores borradosomienzo despliegue?'
        input 'Comenzar Despliegue'
      }
    }

    stage('Armando Imagenes y COntenedor') {
      steps {
        echo 'Comienzo a Ejecutar script?'
        sh 'sshpass -p devops ssh pao@192.168.56.103 \'bash\' < script2.sh'
        echo 'Imagenes y Contenedores Generados'
        input 'Continuo ?'
      }
    }  

  
