pipeline {
    agent any
    environment {
        DOCKER_HUB_CREDENTIAL = credentials('mnj@access')
        // ...
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

        stage('Uploading Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        // Push the manually tagged image to Docker Hub
                        docker.image("${dockerImage}").push()
                    }
                }
            }
        }
    }
}
