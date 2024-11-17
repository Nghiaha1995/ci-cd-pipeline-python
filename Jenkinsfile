pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Nghiaha1995/ci-cd-pipeline-python', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
    }
    post {
        always {
            echo "Pipeline execution finished"
        }
        success {
            webexSend color: 'green', message: 'The pipeline completed successfully! 🎉'
        }
        failure {
            webexSend color: 'red', message: 'The pipeline failed. Please check Jenkins logs. ❌'
        }
    }
}
