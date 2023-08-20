pipeline {
    agent any
    environment {
        dockerImage =''
        registry ='manoj2uchiha/s_task1'
        registryCredential = 'dockerhub_id'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ManojUchiha02/S_Task4.git']])
            }
        }
        
        stage ('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage ('Uploading Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                    dockerImage.push()
                }    
               
            }
        }
    }
}
    
}
