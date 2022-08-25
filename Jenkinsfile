
pipeline {
  environment {
    imagename = "haroon-image"
    
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/Haroon-liaquat/ep-test.git', branch: 'main'])

      }
    }
    stage('Building image') {
      steps{
        script {
          powershell 'docker build -t haroon-image:latest .'
         // powershell 'docker-compose up'
        }
      }
    }
    stage('Docker Build container') {
      agent any
      steps {
        
        dir('../git-dockers') {
            powershell 'docker-compose up'
        }
        // powershell 'docker-compose up'
            
      }
    }

  }
}
