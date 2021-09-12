pipeline {
  agent any
  stages {
    stage('Sincronizacion') {
      steps {
        echo 'Sincronizacion Git correcta.'
        input 'Esperando confirmacion manual'
      }
    }

    stage('Crear Imagen ') {
      steps {
        sh 'sh script.sh'
        echo 'Imagen Creada'
      }
    }

  }
}