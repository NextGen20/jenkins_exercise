pipeline {
    agent any
    stages {
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
        stage('Env Graph')
        steps {
            sh 'terraform graph -draw-cycles > graph.dot'
            sh 'dot -Tpng graph.dot -o graph.png'
        }
        stage('AWS S3 Upload') {
            steps {
                withAWS(credentials: 'aws-key', region: 'us-east-1') {
                s3Upload(bucket: 'jenkins-sqlabs-amitb', path: 'project1/', includePathPattern: '*/graph.png')
                
                }
            }
        }
    }
}
