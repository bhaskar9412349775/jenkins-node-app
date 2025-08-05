pipeline {
    agent any

    environment {
        IMAGE_NAME = 'myapp'
        CONTAINER_PORT = '3000'
    }

    stages {

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                sh "docker run -d -p $CONTAINER_PORT:$CONTAINER_PORT $IMAGE_NAME"
            }
        }
    }

    post {
        success {
            echo ' Build and deployment completed successfully!'
        }
        failure {
            echo ' Build failed. Check logs for errors.'
        }
    }
}

