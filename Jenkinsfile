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
                sh '''
                    echo "Stopping any container already using port 3000..."
                    docker ps --filter "publish=3000" --format "{{.ID}}" | xargs -r docker stop

                    echo "Removing any existing container named myapp..."
                    docker rm -f myapp || true

                    echo "Starting a new container..."
                    docker run -d -p 3000:3000 --name myapp myapp
                '''
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

