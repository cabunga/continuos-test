pipeline {

  agent any

  stages {
      stage('GetCode') {

      steps {
          git 'https://github.com/cabunga/continuos-test.git'
          echo '....Codigo descargado'
      }

    }

    stage('Build') {

      steps {
      echo 'Build'
      sh label:'', script: 'chmod +x gradlew'
      sh label: '', script: './gradlew clean build'

      }

    }

    stage('Test') {

      steps {
        echo'test'
        //bat(script: 'gradle test', returnStatus: true)

      }

    }

    stage('CodeAnalytic') {

      steps {
        withSonarQubeEnv (installationName: 'sonarvmps') {
            sh './gradlew sonarqube'
        }
       

      }
    
    }

    stage('Deploy Dllo') {

      steps {

        echo'deploy'

      }

    }
     stage('Test Dllo') {

      steps {

        echo'deploy'

      }

    }
    stage('Deploy Certification') {

      steps {

        echo'deploy'

      }

    }
    stage('Test Certication') {

      steps {

        echo'deploy'

      }

    }
    stage('Deploy Production') {

      steps {

        echo'deploy'

      }

    }
    stage('Test Production') {

      steps {

        echo'deploy'

      }

    }

  }

}