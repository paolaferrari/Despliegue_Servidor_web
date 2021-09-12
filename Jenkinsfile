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
        sh 'dos2unix script.sh'
        sh 'sh script.sh'
        echo 'Imagen Creada'
      }
    }

  }
}