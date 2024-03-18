pipeline {
    agent { label 'tf' }
    //agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'              
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
             }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "chmod +x ./script.sh"
                sh(""" ./script.sh""")
                
            }
        }
    }

post {
        always {
            archiveArtifacts artifacts: '**/apache_install_date.txt', fingerprint: true           
        }
    }
}

