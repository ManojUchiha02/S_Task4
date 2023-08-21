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
                    def dockerImage = docker.build("s_task1:36", ".")
                    dockerImage.tag("s_task1:latest")
        }
    }
}
        stage('Uploading Image') {
            steps {
                script {
                    docker tag s_task1 manoj2uchiha/s_task1
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
