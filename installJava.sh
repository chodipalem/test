#!/bin/bash      
#title           : Install Java
#description     : 
#author		     : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		     : sh javaInstallation.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com

#yum  install java-1.8.0-openjdk -y
#The java-1.8.0-openjdk package contains just the Java Runtime Environment. 
#If you want to develop Java programs then install the java-1.8.0-openjdk-devel package.
#yum install java-1.8.0-openjdk-devel -y

#http://openjdk.java.net/install/


echo 'Oracle Java Installation started.'
echo '---------------------------------'
yum install wget -y
cd /opt
#wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.rpm
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
yum install jdk-8u131-linux-x64.rpm -y
echo 'Java Installation done.'                                                                                                                             
echo '-----------------------'
java -version