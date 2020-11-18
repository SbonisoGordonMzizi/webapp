pipeline{
    agent none
    tools {
       maven 'Maven 3.6.3'   
    }
    stages{
        stage("Build_War_Artifact"){
            agent {label 'agent1'}
            steps{
               sh ... 
               echo "Build War Artifact"
               mvn -version
               ... 
               
            }
        }
        stage("Stashed_war_artifact"){ 
            agent { label 'agent1'}
            options { skipDefaultCheckout()}
            steps{
               echo "Stashed war artifact"
            }
        }
        stage("Build_docker_image"){
            agent { label 'agent2'} 
            options { skipDefaultCheckout()}
             steps{
                 echo "Build docker image"
             }
        }
        stage("Stashed_docker_image"){
            agent { label 'agent2'}
            options { skipDefaultCheckout()}
            steps{
                echo "Stashed docker image"
            }  
        }
    }
    post{
        failure{
         echo "failed failed pipeline"   
        }
        success {
          echo "Everything went wll successful"  
        }
        unstable{
           echo "Code is not developed well"   
        }
    }
}
