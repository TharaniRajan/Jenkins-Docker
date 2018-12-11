FROM jenkins/jenkins:2.112
LABEL maintainer="ramkumarm201093learn@gmail.com"

# root user
USER root

#consistent logging 
RUN mkdir /var/log/jenkins

#SAVING JENKINS HOME DIR
RUN mkdir /var/cache/jenkins

#change logging folder mode
RUN chown -R jenkins:jenkins /var/log/jenkins

#change jenkins Home dir folder mode
RUN chown -R jenkins:jenkins /var/cache/jenkins

#normal user
USER jenkins

#set environment variables

#MEMORY SETTINGS gives 8 GB memory pool and room to handle garbage collection
ENV JAVA_OPTS="-Xmx8192m"

#INCREASING THE CONNECTION POOL
#ENV JENKINS_OPTS=" --handlerCountMax=300"

#INCREASING THE CONNECTION POOL with consistent logging 
#ENV JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"

#INCREASING THE CONNECTION POOL with consistent logging and saving Jenkins Home dir
ENV JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"

