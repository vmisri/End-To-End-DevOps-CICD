pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('app') {
                    sh 'docker build -t devops-web:v1 .'
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop devops-container || true'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm devops-container || true'
            }
        }

    }
}
