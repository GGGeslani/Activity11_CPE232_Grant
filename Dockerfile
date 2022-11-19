FROM ubuntu
MAINTAINER grant <qggcgeslani01@tip.edu.ph>

#Skip prompts 
ARG DEBIAN_FRONTEND=noninteractive

#Update Packages
RUN apt update; apt dist-upgrade -y

#Install Packages
RUN apt install -y apache2 mariadb-server

#Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
