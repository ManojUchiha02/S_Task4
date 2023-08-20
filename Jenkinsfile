pipeline {
    agent any
    environment {
        dockerImage = 's_task1' // Use the manually tagged image name
        registry = 'manoj2uchiha/s_task1'
        registryCredential = 'dockerhub_id1'
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
            docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                def dockerImage = docker.image('s_task1:latest')
                    dockerImage.push()
            }
    }
            }
        }
    }
}
