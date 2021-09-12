pipeline {
  agent any
  stages {
    stage('Sincronizacion') {
      steps {
        echo 'Sincronizacion Git correcta.'
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