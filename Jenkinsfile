
pipeline {
    agent any 
    stages {
        stage ('Clone') {
            steps {
                git 'https://github.com/21120456/MMTNC-DA3.git'
            }
        }
        stage ('Build') {
            steps {
                sh 'docker build -t kthoangst/webshop:""$BUILD_ID"" .'
            }
        }
        stage ('Push') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker push kthoangst/webshop:""$BUILD_ID""'
                }
            }
        }
    }
}


