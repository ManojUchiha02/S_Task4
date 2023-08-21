pipeline {
    agent any
    environment {
        dockerImage = ''  // Define a default value if needed
        registry = 'manoj2uchiha/s_task1'
        registryCredential = 'dockerhub_id'
    }


    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/ManojUchiha02/S_Task4.git']]
                ])
            }
        }

        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build("task4:v1")
                }
            }
        }

        stage('login') {
            steps {
                script {
                    bat "docker login"
                    }
                }
            }
        stage('tag') {
            steps {
                script {
                    bat "docker tag task4:v1 manoj2uchiha/task4:v1
                    }
                }
            }
        stage('push') {
            steps {
                script {
                    bat "docker push manoj2uchiha/task4:v1"
                    }
                }
            }
        }
    }
}
