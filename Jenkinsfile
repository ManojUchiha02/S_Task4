pipeline {
    agent any
    environment {
        dockerImage = ''
        registry = 'manoj2uchiha/s_task1'
        registryCredential = 'dockerhub_id'
    }

    stages {
      stage('Checkout') {
         steps {
            checkout scm(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url:'https://github.com/ManojUchiha02/S_Task4.git']])
         }
      }

        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }

        stage('Uploading Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
