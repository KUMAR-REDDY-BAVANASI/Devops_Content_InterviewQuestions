FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://apache.mirror.wearetriple.com/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.41/* /usr/local/tomcat/
RUN wget https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/10g/r3/cluster/session_state/files/shoppingcart.zip
RUN apt install unzip
RUN unzip shoppingcart.zip
RUN cp -R shoppingcart.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD /usr/local/tomcat/bin/catalina.sh run



#change the CMD as
#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
#and tomcat runing by default on port 8080 so change accordingly
#OR to run specifically or port 8000, add the following in Dockerfile
#RUN sed -i 's/port="8080"/port="8000"/' /usr/local/tomcat/conf/server.xml



