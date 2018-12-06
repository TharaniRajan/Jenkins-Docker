![Logo](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/docs/GeppettoIcon.png?raw=true"Logo")

# Docker With Jenkins<br/>
   In here we will see how to containerize Jenkins in Docker.

# Content
1. [Prerequisites](#prerequisites)

# Prerequisites<br/> 
  [Install docker](https://docs.docker.com/install/)
  
# Jenkins Installation
  The Jenkins Continuous Integration and Delivery server.
  
  ### Setting up Jekins:<br/>
   To run Jekins in docker first you have download the Jenkins image from the docker hub by giving this command
   
            docker run -d -p 8080:8080 --name jenkins1 jenkins/jenkins:lts
            
   Before that make sure that you dont have anything running in the port 8080 or you can use any port number of your convient.
 After you have pulled the nexus image check what the status of the container by giving this command.
 
            docker ps -a
            
Once you have opened the browser with the port number 8080 you will see the below screen which ask for password.

   ![browser](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/docs/Selection_066.png?raw=true"browser")

To get that you need to into the jenkins container by using the command

        docker exec -ti jenkins1 bash
        
Once that is done you can give cat with the path name which you have seen in the screen which will show you the password just copy paste it to the text box and you will be able to get inside the jenkins.

  Where you will see below screen without any jobs or pipelines.
  
  
  
  Now you can start creating a free style job and add the necessary detials in the 
