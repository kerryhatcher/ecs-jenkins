FROM centos
USER root
RUN useradd -ms /bin/bash ec2-user
RUN yum install -y wget curl
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
RUN yum localinstall jre-8u111-linux-x64.rpm
RUN yum group install -y "Development Tools"
RUN yum install -y git nodejs
USER ec2-user
