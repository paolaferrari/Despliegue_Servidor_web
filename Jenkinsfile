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
      parallel {
        stage('Borrando imagenes y contenedor') {
          steps {
            echo 'Borro imagenes y contenedores ?'
            sh '''
sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < script.sh'''
            echo 'Imagenes y contenedores borradosomienzo despliegue?'
          }
        }

        stage('No hay imagenes') {
          steps {
            echo 'no hay imagenes'
          }
        }

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
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < scriptweb.sh'
        echo 'Despliegue correcto'
      }
    }

  }
}