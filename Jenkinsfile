pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            stage('Build Docker image') {
            steps {
                script {
                    docker.build("test1:latest", 
                                 context: ".", 
                                 dockerfile: "C:\\Users\\Boya Manoj-2978\\Documents\\tasks\\GIT_JENKINS\\Dockerfile")
                    // imageName = "manoj2uchiha/test1"
                    // imageTag = "tagnamee"
                    // bat "docker build -t ${imageName}:${imageTag} -f \"${dockerfilePath}\" \"${buildContext}\""
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
                    bat "docker push manoj2uchiha/test1:tagnamee"
                }
            }
        }
    }
}
