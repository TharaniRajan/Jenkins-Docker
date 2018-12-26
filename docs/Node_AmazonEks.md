![Logo](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/docs/GeppettoIcon.png?raw=true"Logo")

# Node with Mongo in Kubernetes<br/>
   Here we will see how to containerize Node and Mongo with persistent volume and communication between the containers on the Top of a Kubernetes Cluster.

# Content
1. [Prerequisites](#prerequisites)
1. [Kubernetes Setup](#kubernetes-setup)
1. [Jenkins](#jenkins-setup)

# Prerequisites<br/> 
  [Docker](https://docs.docker.com/install/) <br/> 
  [Virtual Machine](https://www.virtualbox.org/wiki/Downloads) <br/> 
  [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) <br/> 
  [Kubernetes CLI](https://kubernetes.io/docs/tasks/tools/install-kubectl/) <br/> 
  
  Make sure that you have Amazon Eks is ready.
  
 # Mongo with Amazon Eks
 
  Kubernetes deployment is presented in a YAML format text file with all the configuration params that might be needed to run   your application.
  
  Create a [mongo-deployment.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/jenkins_Kubernetes/jenkins-deployment.yaml) file, Let’s install the just created deployment into our Kubernetes cluster by using the specified command:
  
     $ kubectl apply -f mongo-deployment.yaml
     
  In addition to pod creation via deployment, we need to create the Mongo service. The reason behind this is simple. To       interact with a pod inside the Kubernetes cluster   
  
  Create a [mongo-service.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/jenkins_Kubernetes/jenkins-service.yaml) file,  you can run it inside the Kubernetes container by using this command:
      
     $ kubectl apply -f mongo-service.yaml
 
