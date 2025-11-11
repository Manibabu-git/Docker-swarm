ARG version=latest
FROM ubuntu:$version
MAINTAINER Manibabu
RUN apt-get update 
RUN apt install apache2
EXPOSE 80
copy index.html /var/www/html/index.html
CMD ["apachectl","-D","FOREGROUND"]



