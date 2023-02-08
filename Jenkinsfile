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
                withCredentials([sshUserPrivateKey(credentialsId: 'ssh-amazon', keyFileVariable: '', usernameVariable: 'ec2-user')]) {
                sh 'echo $PASSWORD'
		echo USERNAME
                }
           }
	}

    }
}
