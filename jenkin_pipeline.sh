pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from version control
                git 'https://github.com/your/repository.git'
            }
        }
        
        stage('Build') {
            steps {
                // Build the project (replace with your build command)
                sh 'mvn clean install'
            }
        }
        
        stage('Test') {
            steps {
                // Run tests (replace with your test command)
                sh 'mvn test'
            }
        }
    }
    
    post {
        success {
            // Post-build actions on success (e.g., deploy artifacts)
            echo 'Build and tests passed!'
        }
        failure {
            // Post-build actions on failure (e.g., send notifications)
            echo 'Build or tests failed!'
        }
    }
}

