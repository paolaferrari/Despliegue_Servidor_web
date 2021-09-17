pipeline {
  agent any
  stages {
    stage('Git sincronizar') {
      parallel {
        stage('Git sincronizar') {
          steps {
            echo 'Sincronizacion Git correcta.'
            input 'Esperando confirmacion manual'
          }
        }

        stage('Copia archivos de Git') {
          steps {
            sh 'sshpass -p 3072 ssh pao@192.168.56.103 \'bash -s\' < scriptWinaLin.sh'
          }
        }

      }
    }

    stage('Borrando imagenes y contenedor') {
      steps {
        echo 'Borro imagenes y contenedores ?'
        sh '''
sshpass -p pao ssh pao@192.168.56.103 \'bash -s\' < script.sh'''
        echo 'Imagenes y contenedores borradosomienzo despliegue?'
        input 'Contenedor e Imagenes Borradas'
      }
    }

    stage('Ejecutando script.sh') {
      steps {
        echo 'Comienzo a Ejecutar script?'
        sh 'sshpass -p devops ssh pao@192.168.56.103 \'bash\' < script2.sh'
        echo 'Imagenes y Contenedores Generados'
        input 'Continuo ?'
      }
    }

    stage('Abrir navegador y web') {
      steps {
        sh 'sshpass -p pao ssh pao@192.168.56.1038 \'bash -s\' < firefox 192.168.56.103:4000'
        echo 'Despliegue correcto'
      }
    }

  }
}
