pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerfilePath = "C:\\Users\\Boya Manoj-2978\\Documents\\tasks\\GIT_JENKINS\\Dockerfile"
                    buildContext = "C:\\Users\\Boya Manoj-2978\\Documents\\tasks\\GIT_JENKINS"
                    imageName = "manoj2uchiha/s_task1"
                    imageTag = "4"
                    bat "docker build -t ${imageName}:${imageTag} -f \"${dockerfilePath}\" \"${buildContext}\""
                }
            }
        }
        stage('List Docker Images') {
            steps {
                script {
                    bat "docker images"
                }
            }
        }
        stage('Log In to Docker Hub') {
            steps {
                script {
                    bat "docker login"
                }
            }
        }
        stage('Push the Image') {
            steps {
                script {
                    bat "docker push manoj2uchiha/s_task1:4"
                }
            }
        }
    }
}
