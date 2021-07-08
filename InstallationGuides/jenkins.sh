
#!/bin/bash
#Change the direcoty to /tmp

cd /tmp

# download the java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm

# Install the java

rpm -ivh jdk-8u131-linux-x64.rpm

# Create java repo /etc/yum.repos.d
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

 rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key

# Install Jenkins

yum install jenkins --nogpgcheck

# Start Jenkins


systemctl start jenkins

systemctl enable jenkins
