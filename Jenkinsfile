pipeline {
  agent any
  stages {
    stage('Sincronizacion') {
      steps {
        echo 'Sincronizacion Git correcta.'
        input 'Esperando confirmacion manual'
      }
    }

    stage('Subiendo el Script') {
      steps {
        echo 'subiendo'
        sh '''
sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < script2.sh'''
        echo 'Imagenes y container generados.Comienzo despliegue?'
      }
    }

    stage('desplegando') {
      steps {
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < scriptweb.sh'
      }
    }

  }
}