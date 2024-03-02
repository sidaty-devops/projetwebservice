pipeline {
    agent any
    environment {
        registry = "sidaty/repo"
        registryCredential = 'jenkisgitlabssh'
        dockerImage = ''
    }
        stages {
            stage('recuperation du projet'){
                steps {
                    git branch: 'main',
                    credentialsId: 'jenkinsgithub',
                    url :'git@gitlab.example.com:alain/microservice2.git'
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
            //stage("Docker build") {
              //  steps {
                //    script {
                  //      sh "docker build -t 172.17.0.2:5000/imagespring ."
                    //}
                //}
            //}
            //stage("Docker push") {
              //  steps {
                //    script {
                  //      sh "docker push 172.17.0.2:5000/imagespring"
                    //}
                //}
            //}
        }
}
