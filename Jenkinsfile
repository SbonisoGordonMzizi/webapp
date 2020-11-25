pipeline{
    agent none
    tools {
       maven 'Maven 3.6.3'   
    }
    stages{
        stage("Compile_Code"){
            agent { label 'Artifact_agent'}
            steps{
             sh 'mvn clean compile'   
            }
        }
        stage("Test_Junit_test_cases"){
           agent { label 'Artifact_agent'}
            options { skipDefaultCheckout()}
            steps{
               sh 'mvn clean test'
            }
        }
        stage("Build_war_artifact"){ 
            agent { label 'Artifact_agent'}
            options { skipDefaultCheckout()}
            steps{
               sh 'mvn clean package'
            }
        }
        stage("Test_Selenium_test_cases"){
            agent { label 'testing_agent'} 
            options { skipDefaultCheckout()}
             steps{
                 echo "Selenium Testing"
                 sh "test.sh"
             }
        }
        stage("Push_to_repo"){
            agent { label 'Artifact_agent'}
            options { skipDefaultCheckout()}
            steps{
                echo "Push Artifact to repo"
            }  
        }
        stage("Pull_Artifact_from_repo"){
          agent { label 'image_agent'}
            options { skipDefaultCheckout()}
            steps{
                echo "Pull Artifact from repo"
            }  
        }
        stage("Build_docker_image"){
          agent { label 'image_agent'}
            options { skipDefaultCheckout()}
            steps{
                echo "Build docker Image"
            }  
        }
        stage("Push_an_image_to_repo"){
          agent { label 'image_agent'}
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
