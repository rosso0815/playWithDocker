############################################################
FROM centos:7

MAINTAINER rosso0815

RUN  yum clean all && \
    yum -y install epel-release && \
    yum -y install which && \
    yum -y install wget && \
    yum -y install git && \
    yum -y install java-11-openjdk && \
    yum -y install java-11-openjdk-devel && \
    yum -y install java-11-openjdk-src && \
    yum -y install rpmdevtools && \
    yum -y update && \
    yum clean all && \
    rm -rf /var/cache/yum