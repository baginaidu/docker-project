FROM ubuntu
RUN apt-get update -y
RUN apt install apache2 -y
RUN service apache2 start
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
