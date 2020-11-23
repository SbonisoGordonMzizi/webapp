pipeline{
    agent none
    tools {
       maven 'Maven 3.6.3'   
    }
    stages{
        stage("Compile_Code"){
            agent { label 'agent1'}
            steps{
             sh 'mvn clear compile'   
            }
        }
        stage("Test_Junit_test_cases"){
            agent {label 'agent1'}
            optins { skipDefaultChechout()}
            steps{
               sh 'mvn clear test'
            }
        }
        stage("Build_war_artifact"){ 
            agent { label 'agent1'}
            options { skipDefaultCheckout()}
            steps{
               sh 'mvn clear package'
            }
        }
        stage("Test_Selenium_test_cases"){
            agent { label 'agent2'} 
            options { skipDefaultCheckout()}
             steps{
                 echo "Selenium Testing"
             }
        }
        stage("Push_to_repo"){
            agent { label 'agent2'}
            options { skipDefaultCheckout()}
            steps{
                echo "Push Artifact to repo"
            }  
        }
        stage("Pull_Artifact_from_repo"){
          agent { label 'agent2'}
            options { skipDefaultCheckout()}
            steps{
                echo "Pull Artifact from repo"
            }  
        stage("Build_docker_image"){
          agent { label 'agent2'}
            options { skipDefaultCheckout()}
            steps{
                echo "Build docker Image"
            }  
        }
        stage("Push_an_image_to_repo"){
          agent { label 'agent2'}
            options { skipDefaultCheckout()}
            steps{
                echo "Push An Image To Repo"
            }  
        }  
    }
    post{
        failure{
          echo "send email to dev,Test,Ops Team"   
        }
        success {
          echo "send email to dev,Test,Ops Team"
        }
    }
}
