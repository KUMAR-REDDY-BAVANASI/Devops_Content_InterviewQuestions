#!/bin/bash

#Change the directory to /tmp
cd /tmp

#download the java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm

#Install the jdk-8u131-linux-x64.rpm
rpm -ivh jdk-8u131-linux-x64.rpm

#Change the directory to /opt
cd /opt

# Download the tomcat
wget https://mirror.lyrahosting.com/apache/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.zip

#unzip the tomcat
unzip apache-tomcat-9.0.41.zip

#remove the downloaded tomcat zip
rm -f apache-tomcat-9.0.41.zip

#rename the folder/directory apache-tomcat-9.0.41-windows-x64 to tomcat9
mv apache-tomcat-9.0.41 tomcat9

# change the permoissions for the scripts in the /opt/tomcat9/bin/*.sh directory
cd /opt/tomcat9/bin
chmod 755 *.sh

#start the tomcat
./startup.sh
