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
                    sh 'docker build -t 22127251/jenkin_dockerhub_test2 .'
                    sh 'docker push 22127251/jenkin_dockerhub_test2'
                }
            }
        }
        // stage('Pull image from dockerhub and run in container') {
        //     steps {
        //         sh 'docker pull 22127251/jenkin_dockerhub_test2'
        //         sh 'docker run -d -p 443:8080 22127251/jenkin_dockerhub_test2'
        //     }
        // }        
    }
}