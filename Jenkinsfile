pipeline {
    agent any

    stages {
        stage('TestingDocker') {
            steps {
                sh 'docker-compose config'
            }
        }
        stage('building') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('starting') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
