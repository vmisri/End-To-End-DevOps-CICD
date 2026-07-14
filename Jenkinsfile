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

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name devops-container -p 80:80 devops-web:v1'
            }
        }

    }
}
