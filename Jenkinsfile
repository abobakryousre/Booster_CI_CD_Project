pipeline {
    agent any

    stages {
        stage('preparation') {
            steps {
                git 'https://github.com/abobakryousre/Booster_CI_CD_Project.git'
            }
        }
        stage('CI') {
            steps {
                sh 'docker build . -t abobbakr/django'
            }
        }
        stage('CD') {
            steps {
                sh 'docker run -d -p 8000:8000 abobbakr/django'
            }
            
            post{
            	success{
            		slackSend (color:"#52a832", message: "Hellow from jenkins after CICD")
            	}
            }
        }
        
    }
}

