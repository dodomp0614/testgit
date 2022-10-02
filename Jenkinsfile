pipeline {
    agent any
    environment { 
        REPOSITORY = "dlgytjd1997/pipeline"  //docker hub id와 repository 이름
        DOCKERHUB_CREDENTIALS = credentials('docker-hub') // jenkins에 등록해 놓은 docker hub credentials 이름
        dockerImage = ''
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
        stage('Remove docker image') { 
		  steps { 
              sh "docker rmi -f $REPOSITORY:latest" // docker image 제거
          }
        } 
        stage('Deploy with Azure VM'){
            steps{
                sshagent(credentials : ["deploy-key"]) {
                    sh """
                    ssh -o StrictHostKeyChecking=no hyosung@20.200.209.165
                    docker run -d -p 8000:8000 $REPOSITORY:latest
                    """
                }
            }
        }
    }
}
