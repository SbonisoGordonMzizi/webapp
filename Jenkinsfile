pipeline{
    agent any
    tools {
       maven 'Maven 3.6.3'   
    }
    stages{
        stage("Compile_Code"){
            steps{
             sh 'mvn clean compile'   
            }
        }
        stage("Test_Junit_test_cases"){
            options { skipDefaultCheckout()}
            steps{
               sh 'mvn clean test'
            }
        }
        stage("Build_war_artifact"){ 
            options { skipDefaultCheckout()}
            steps{
               sh 'mvn clean package'
            }
        }
        stage("Push_to_local_repo"){
         options { skipDefaultCheckout()}
            steps{
                sh "mvn clean install"
            }  
        }
        stage("Pull_Artifact_from_repo"){
            options { skipDefaultCheckout()}
            steps{
                echo "Pull Artifact from repo"
            }  
        }
        stage("Build_docker_image"){
            options { skipDefaultCheckout()}
            steps{
                echo "Build docker Image :$BUILD_NUMBER"
                sh "docker build -t basicwebapp:$BUILD_NUMBER ."
            }  
        }
        stage("Deploy_Docker_Image_Staging"){
            options { skipDefaultCheckout()}
            steps{
                echo "Deploy an docker image to pre-prod env"
                sh "docker run --rm -d -p 3030:8080 --name webapp_$BUILD_NUMBER basicwebapp:$BUILD_NUMBER"
            }  
        }  
    }
    post{
        failure{
          echo "FAILED MESSAGE email it to dev,Test,Ops Team"   
        }
        success {
          echo "SUCCESS MESSAGE  email it to dev,Test,Ops Team"
        }
    }
}
