pipeline {
    agent any
    stages {
        stage('Clone github code') {
            steps {
                git branch: 'main', credentialsId: 'up_github_cred', url: 'https://github.com/VHBLong/jenkin_github_test2.git'
            }
        }
        stage('Build image and upload to dockerhub') {
            steps {
                withDockerRegistry(credentialsId: 'up_dockerhub_cred', url: 'https://index.docker.io/v1/') {
                    bat 'docker build -t 22127251/jenkin_dockerhub_test2 .'
                    bat 'docker push 22127251/jenkin_dockerhub_test2'
                }
            }
        }
        stage('Pull image from dockerhub and run in container') {
            steps {
                bat 'docker pull 22127251/jenkin_dockerhub_test2'
                bat 'docker run -d -p 8081:80 22127251/jenkin_dockerhub_test2'
            }
        }        
    }
}
