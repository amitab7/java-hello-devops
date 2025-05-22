pipeline {
    agent any

    environment {
        IMAGE_NAME = "java-hello-devops"
    }

    stages {
        stage('Clone') {
            steps {
                git credentialsId: '71ec0d90-40d3-4018-a832-3421852e28e0', url: 'https://github.com/amitab7/java-hello-devops.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build & Run') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
                sh 'docker run -d --rm --name java-hello-devops-container -p 8080:8080 $IMAGE_NAME'
            }
        }
    }

    post {
        always {
            sh 'docker ps -a'
        }
    }
}
