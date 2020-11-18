pipeline{
    agent any
    
    stages{
        stage("Build"){
           steps{
              echo "Application Building"
           }
        }
        stage("Test"){
            when{
                expression{
                  BRANCH_NAME == 'dev'   
                }
            }
            steps{
               echo "Applicton Testing"
            }
        }
        stage("Deploy"){
             steps{
                 echo "Application Deplyment"
             }
        }
    }
    post{
        always{
         echo "i am going to do this everyday"   
        }
        success {
          echo "well done everything is working"  
        }
    }
}
