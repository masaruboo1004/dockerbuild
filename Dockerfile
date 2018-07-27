FROM ubuntu:16.04
MAINTAINER masaruboo1004@hotmail.com
LABEL purpose="HandsOnLab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo Welcome to Audomated!!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]