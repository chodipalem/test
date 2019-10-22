#!/bin/bash      
#title           : Install Apache Tomcat Server
#description     : Execute this script as root user
#author		 : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		 : sh tomcatInstall.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com

yum install wget unzip -y
cd /opt
wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.zip
unzip apache-tomcat-9.0.27.zip
cd /opt/apache-tomcat-9.0.27/bin
chmod u+x *.sh

#sh /opt/apache-tomcat-9.0.24/bin/startup.sh

ln -s /opt/apache-tomcat-9.0.27/bin/startup.sh /usr/bin/startTomcat
ln -s /opt/apache-tomcat-9.0.27/bin/shutdown.sh /usr/bin/stopTomcat

#ps -fax | grep tomcat
#netstat -tunlap
#vi /opt/apache-tomcat-9.0.27/webapps/manager/META-INF/context.xml
#Comment the below lines
#<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"
#         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->
		 
startTomcat
#stopTomcat