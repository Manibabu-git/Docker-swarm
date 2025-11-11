ARG version=latest
FROM ubuntu:$version
MAINTAINER Manibabu
RUN apt-get update 
RUN apt-get install apache2 -y
EXPOSE 80
copy index.html /var/www/html/index.html
CMD ["apachectl","-D","FOREGROUND"]



