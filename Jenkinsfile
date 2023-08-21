pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = "https://index.docker.io/v1/"
        DOCKERHUB_ACCESS_TOKEN = credentials('dockerhub_id')
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
                    dockerImage = docker.build("s_task1")
                }
            }
        }

        stage('Uploading Image') {
            steps {
                script {
                    docker.withRegistry(DOCKER_REGISTRY, DOCKERHUB_ACCESS_TOKEN) {
                    dockerImage.push()
                    }
                }
            }
        }
    }
}
