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
                ssh 3.248.210.80
                sh 'echo $PASSWORD'
		echo USERNAME
                }
           }
	}

    }
}
