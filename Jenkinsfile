
pipeline {
  environment {
    imagename = "haroon-image"
    
  }
  agent any
  stages {
    
    stage('echos') {
      steps {
        
        echo "${workspace}"

      }
    }

    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/Haroon-liaquat/ep-test.git', branch: 'main'])

      }
    }
    stage('Building image') {
      steps{
        script {
          powershell "docker build -t ${imagename}:latest ."
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
