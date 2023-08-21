pipeline {
    agent any
    environment {
        dockerImage = '' // You can remove this line, as dockerImage is defined later
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
                    def dockerImage = docker.build("s_task1:${env.BUILD_ID}") // Use 's_task1' as image name

                    // Manually tag the image with the repository name
                    dockerImage.tag("${registry}:${env.BUILD_ID}")
                }
            }
        }

        stage('Uploading Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        // Push the tagged image to Docker Hub
                        docker.image("${registry}:${env.BUILD_ID}").push()
                    }
                }
            }
        }
    }
}
