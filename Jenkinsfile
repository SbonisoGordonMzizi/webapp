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
        stage("Test_Selenium_test_cases"){ 
            options { skipDefaultCheckout()}
             steps{
                 echo "Selenium Testing"
                 sh "sleep 2m"
             }
        }
        stage("Push_to_repo"){
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
                echo "Build docker Image"
            }  
        }
        stage("Push_an_image_to_repo"){
            options { skipDefaultCheckout()}
            steps{
                echo "Push An Image To Repo"
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
