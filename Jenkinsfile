pipeline {
    agent any
    environment {
        dockerImage = 's_task1' // Use the manually tagged image name
        registry = 'manoj2uchiha/s_task1'
        registryCredential = 'dockerhub_id'
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
