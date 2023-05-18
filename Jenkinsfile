
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main' , url:'https://github.com/NextGen20/jenkins_exercise.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
