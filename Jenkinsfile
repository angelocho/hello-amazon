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
        stage('ConexionAWS'){
	   steps {
	     withCredentials([sshUserPrivateKey(credentialsId: 'ssh-amazon', keyFileVariable: '')]) {
	        sh 'ssh ec2-user@3.248.210.80'
                sh 'echo hola'
		}
           }
	}

    }
}
