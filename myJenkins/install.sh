#!/bin/bash

set -x

echo "start"

yum -y install java

yum -y install wget

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum -y install jenkins

echo "end"
