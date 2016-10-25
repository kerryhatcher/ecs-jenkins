FROM jenkins
USER root
RUN usermod -l ec2-user jenkins
RUN usermod -u 500 ec2-user
RUN groupmod -n ec2-user jenkins
RUN groupmod -g 500 ec2-user
RUN find / -user 1000 -exec chown -h 500 {} \;
RUN find / -group 1000 -exec chgrp -h 500 {} \;
RUN usermod -g 500 ec2-user
USER ec2-user
