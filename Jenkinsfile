pipeline {
    agent any

    stages {
        stage('ConexionAWS'){
	   steps {
	     withCredentials([sshUserPrivateKey(credentialsId: 'ssh-amazon', keyFileVariable: '')]) {
	        sh 'ssh ec2-user@3.248.210.80'
		}
           }
	}
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
