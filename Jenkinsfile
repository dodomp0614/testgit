pipeline {
    agent any

    stages {
        stage('Pull Codes from Github'){
            steps{
                checkout scm
            }
        }
        stage('Build Django project to docker hub') {
            steps {
                sh """
                cd /root/
                docker build . -t dlgytjd1997
                """
            }
        }
        stage('Build Docker Image by Jib & Push to AWS ECR Repository') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'azure_acr_credential', passwordVariable: 'password', usernameVariable: 'username')]) {
                            sh 'cd ${mainDir}'
                            sh  'docker login -u ${username} -p ${password} jktest.azurecr.io'
                            sh  './gradlew jib -Djib.to.image=jktest.azurecr.io -Djib.console='plain''                            
                        }
            }
        }
        stage('Deploy to AWS EC2 VM'){
            steps{
                sshagent(credentials : ["deploy-key"]) {
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@${deployHost} \
                     'aws ecr get-login-password --region ${region} | docker login --username AWS --password-stdin ${ecrUrl}/${repository}; \
                      docker run -d -p 80:8080 -t ${ecrUrl}/${repository}:${currentBuild.number};'"
                }
            }
        }
    }
}
