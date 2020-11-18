pipeline{
    agent any
    environment{
        NEW_VERSION = '1.3.0'
        
    }
    stages{
        stage("Build"){
           steps{
               echo "Application Building ${NEW_VERSION}"
           }
        }
        stage("Test"){
            when{
                expression{
                  BRANCH_NAME == 'master'   
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
