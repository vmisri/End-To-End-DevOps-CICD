pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
            }
        }

        stage('Docker Test') {
            steps {
                sh 'whoami'
                sh 'id'
                sh 'docker --version'
                sh 'docker ps'
            }
        }

    }
}
