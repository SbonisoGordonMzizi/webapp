pipeline{
    agent none
    environment{
        NEW_VERSION = '1.3.0'
        
    }
    stages{
        stage("Build_War_Artifact"){
            agent {label 'agent1'}
            steps{
               echo "Build War Artifact"
            }
        }
        stage("Stashed_war_artifact"){ 
            agent { label 'agent1'}
            steps{
               echo "Stashed war artifact"
            }
        }
        stage("Build_docker_image"){
            agent { label 'agent2'} 
             steps{
                 echo "Build docker image"
             }
        }
        stage("Stashed_docker_image"){
            agent { label 'agent2'}
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
