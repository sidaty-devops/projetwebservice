pipeline {
    agent any
    environment {
        registry = "sidaty/repo"
        registryCredential = 'jenkinsdockerhub'
        dockerImage = ''
    }
        stages {
            stage('recuperation du projet'){
                steps {
                    git branch: 'main',
                    credentialsId: 'jenkinsgithub',
                    url :'git@github.com:sidaty-devops/projetwebservice.git'
                }
            }
            stage("Compile") {
                steps {
                sh "./gradlew compileJava"
                }
            }
            stage("test") {
                steps {
                sh "./gradlew test"
                }
            }
            stage("package") {
                steps {
                sh "./gradlew build"
                }
            }
            stage("Docker build") {
                steps {
                    script {
                        sh "docker build -t 172.17.0.2:5000/imagespring ."
                    }
                }
            }
            stage("Docker push") {
                steps {
                    script {
                        sh "docker push 172.17.0.2:5000/imagespring"
                    }
                }
            }
        }
}
