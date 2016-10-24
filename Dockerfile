FROM jenkins
USER root
RUN usermod -l ec2-user jenkins
RUN apt-get update && apt-get install -y git
USER ec2-user
