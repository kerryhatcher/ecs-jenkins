FROM jenkins
USER root
RUN usermod -l ec2-user jenkins
RUN usermod -u 500 ec2-user
RUN groupmod -g 500 ec2-user
USER ec2-user
