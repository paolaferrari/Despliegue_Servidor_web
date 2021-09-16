pipeline {
  agent any
  stages {
    stage('Sincronizacion') {
      steps {
        echo 'Sincronizacion Git correcta.'
        input 'Esperando confirmacion manual'
      }
    }

    stage('Borrando imagenes y contenedor') {
      steps {
        echo 'Borro imagenes y contenedores ?'
        sh '''
sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < script.sh'''
        echo 'Imagenes y contenedores borradosomienzo despliegue?'
      }
    }

    stage('Ejecutando el script') {
      steps {
        echo 'Comienzo a Ejecutar script?'
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < script2.sh'
        echo 'Imagenes y Contenedores Generados'
      }
    }

    stage('Desplegando') {
      steps {
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < firefox localhost:4000'
        echo 'Despliegue correcto'
      }
    }

  }
}