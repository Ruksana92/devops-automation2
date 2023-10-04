pipeline {
    agent any
    tools{
        maven 'maven394'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Ruksana92/devops-automation2']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t Ruksana92/devops-automation2 .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u Ruksana92 -p ${dockerhubpwd}'

}
                   sh 'docker push Ruksana92/devops-automation2'
                }
            }
        }
            
        }
    }

