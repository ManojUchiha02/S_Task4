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
            def dockerImage = docker.build("my-image-name:${env.BUILD_ID}")
        }
    }
}

        stage('Uploading Image') {
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
