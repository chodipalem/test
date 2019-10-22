#!/bin/bash      
#title           : Install SonarQube server
#description     : Execute this script as a normal user
#author		       : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		       : sh sonarQubeServerInstall.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com

#Hardware Requirements for SonarQube
#-----------------------------------
#The SonarQube server requires at least 2GB of RAM to run efficiently and 1GB of free RAM for the OS.

#Login as a root user.
sudo su -

#Download the SonarqQube Server software.
cd /opt
yum install wget unzip -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.8.zip
unzip sonarqube-7.8.zip


#As a good security practice, SonarQuber Server is not advised to run sonar service as a root user, so create a new user called nexus and grant sudo access to manage nexus services as follows
useradd sonar

#Give the sudo access to sonar user
visudo

sonar   ALL=(ALL)       NOPASSWD: ALL

#Change the owner and group permissions to /opt/sonarqube-7.6/ directory.

chown -R sonar:sonar /opt/sonarqube-7.8/
chmod -R 775 /opt/sonarqube-7.8/
su - sonar
cd /opt/sonarqube-7.8/bin/linux-x86-64/

./sonar.sh start


#Troubleshooting
#---------------

sonar service is not starting?

a)make sure you need to change the ownership and group to /opt/sonarqube-7.8/ directory for sonar user.
b)make sure you are trying to start sonar service with sonar user.
c)check java is installed or not using java -version command.

Unable to access SonarQube server URL in browser?

a)make sure port 9000 is opened in security group AWS ec2 instance.