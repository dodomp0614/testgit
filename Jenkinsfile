pipeline {
    agent any

    environment {
        /// DockerHUB 로그인을 위한 credential
        DOCKERHUB_CREDENTIALS = credentials(‘dockerhub’)
    }

    stages {
        stage('Pull Codes from Github'){
            steps{
                checkout scm
            }
        }
        stage('Build Django project with dockerfile') {
            steps {
                sh """
                docker build . -t dlgytjd1997/pipetest
                """
            }
        }
        stage('push django image to dockerhub') {
            steps {
                sh """
                echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                docker push dlgytjd1997/pipetest:latest
                """
            }
        }
        stage('Deploy with Azure VM'){
            steps{
                sshagent(credentials : ["deploy-key"]) {
                    sh """
                    ssh -o StrictHostKeyChecking=no hyosung@20.200.209.165
                    docker run -d -p 8000:8000 dlgytjd1997/pipetest:latest
                    """
                }
            }
        }
    }
}
