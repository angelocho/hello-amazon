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
        stage('Dockerlogin'){
           steps {
             withCredentials([string(credentialsId: 'github-token', variable: 'PAT')]) {
                 sh 'echo $PAT | docker login ghcr.io -u angelocho --password-stdin && docker push ghcr.io/angelocho/hello-amazon/hello-amazon:v1'
            
             }

           }
        }
        stage('ConexionAWS'){
	   steps {
		sshagent(['ssh-amazon']) {
                   sh """
                      ssh -o "StrictHostKeyChecking no" ec2-user@ec2-34-244-177-29.eu-west-1.compute.amazonaws.com 'docker pull ghcr.io/angelocho/hello-amazon/hello-amazon:v1 && docker run -td --rm -p 80:80 ghcr.io/angelocho/hello-amazon/hello-amazon:v1'
                   """
                }
           }
	}

    }
}
