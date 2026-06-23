pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Downloading source code'
            }
        }

        stage('Verify') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                cp -r * /var/www/html/
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment completed'
        }
        failure {
            echo 'Deployment failed'
        }
    }
}
