![Logo](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/docs/GeppettoIcon.png?raw=true"Logo")

# Node with Mongo in Kubernetes<br/>
   Here we will see how to containerize Node and Mongo with persistent volume and communication between the containers on the Top of a Kubernetes Cluster.

# Content
1. [Prerequisites](#prerequisites)
1. [Mongo with Amazon Eks](#mongo-with-amazon-eks)
1. [Node with Amazon Eks](#node-with-amazon-eks)

# Prerequisites<br/> 
  [Docker](https://docs.docker.com/install/) <br/> 
  [Kubernetes CLI](https://kubernetes.io/docs/tasks/tools/install-kubectl/) <br/> 
  [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)<br/>
   
  
 # Mongo with Amazon Eks
 
  Make sure that you have kubernetes with Amazon Eks is ready to use.If not,use the previous document to setup the Amazon Eks.
  
  Create a persistent volumes to avoid data loss that happens because of container's dead or stop.
 
  To set up the persistent volume,create a [mongo-persistentvolume.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/node_mongo_eks/mongo-persistentvolume.yaml) file.
 
     $ kubectl apply -f mongo-persistentvolume.yaml
 
  Kubernetes deployment is presented in a YAML format text file with all the configuration params that might be needed to run   your application.
  
  Create a [mongo-deployment.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/node_mongo_eks/mongo-deployment.yaml) file, Let’s install the just created deployment into our Kubernetes cluster by using the specified command:
  
     $ kubectl apply -f mongo-deployment.yaml
     
  In addition to pod creation via deployment, we need to create the Mongo service. The reason behind this is simple. To       interact with a pod inside the Kubernetes cluster   
  
  Create a [mongo-service.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/node_mongo_eks/mongo-service.yaml) file,  you can run it inside the Kubernetes container by using this command:
      
     $ kubectl apply -f mongo-service.yaml
     
  To check the installation by using this commands,
  
     $ kubectl get service
         
 # Node with Amazon Eks 
 
  Create a [node-deployment.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/node_mongo_eks/node-deployment.yaml) file, Let’s install the just created deployment into our Kubernetes cluster by using the specified command:
  
     $ kubectl apply -f node-deployment.yaml
     
  In addition to pod creation via deployment, we need to create the Node service. The reason behind this is simple. To       interact with a pod inside the Kubernetes cluster   
  
  Create a [mongo-service.yaml](https://github.com/TharaniRajan/Jenkins-Docker/blob/master/node_mongo_eks/node-service.yaml) file,  you can run it inside the Kubernetes container by using this command:
      
     $ kubectl apply -f node-service.yaml
     
  To check the installation by using this commands,
  
     $ kubectl get service
 
