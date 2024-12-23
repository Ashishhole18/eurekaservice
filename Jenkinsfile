pipeline {
    agent {
        label 'eureka-server'
    }
    tools {
      maven 'MVN 3.9.9',
      dockerTool 'Docker Latest'
    }

    stages {
        stage("GIT SCM") {
            steps {
                git 'https://github.com/Ashishhole18/eurekaservice'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Dockerize application')  {
            steps{
                sh 'docker build -t latest-eureka .'
            }

        }
        stage('Deploy') {
            steps{
                    sh 'docker run -p 8761:8761 latest-eureka'
            }
        }

    }





}