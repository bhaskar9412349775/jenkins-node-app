pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/bhaskar9412349775/jenkins-node-app.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker run -d -p 3000:3000 myapp:latest'
            }
        }
    }
}

