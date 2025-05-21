pipeline{
    agents any

    stages{
        stage('Clone Repo'){
            steps{
                git 'https://github.com/amitab7/java-hello-devops.git'
            }
        }
        stage('Build with Maven'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image'){
            steps{
                sh 'docker build -t java-hello-devops .'
            }
        }
        stage('Run container'){
            steps{
                sh 'docker run -d --name java-hello-devops-container -p 8080:8080 java-hello-devops '
            }
        }
    }
        
        
}