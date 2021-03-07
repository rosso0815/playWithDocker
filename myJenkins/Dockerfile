############################################################
FROM centos:7

MAINTAINER rosso0815

RUN yum -y update && \
    yum clean all && \
    yum -y install sudo epel-release && \
    yum -y install which && \
    yum -y install wget && \
    yum -y install git && \
    yum clean all && \
    wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo && \
    rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && \
    yum -y install java-1.8.0-openjdk && \
    yum -y install java-1.8.0-openjdk-devel && \
    yum -y install java-1.8.0-openjdk-src && \
        yum -y install java-1.11.0-openjdk && \
    yum -y install java-1.11.0-openjdk-devel && \
    yum -y install java-1.11.0-openjdk-src && \
    yum -y install rpmdevtools && \
    yum -y install docker && \
    yum clean all && \
    rm -rf /var/cache/yum

# from https://github.com/jenkinsci/docker/blob/master/Dockerfile

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
ARG http_port=10080
ARG agent_port=50000
ARG JENKINS_HOME=/var/jenkins_home

ENV JENKINS_HOME $JENKINS_HOME
ENV JENKINS_SLAVE_AGENT_PORT ${agent_port}

VOLUME $JENKINS_HOME

EXPOSE 10080

CMD [ "/usr/bin/java" , "-Xms1024M" , "-Xmx1024M", "-jar" , "/usr/lib/jenkins/jenkins.war" , "--httpPort=10080" ]
