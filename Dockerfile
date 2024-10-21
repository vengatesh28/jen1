FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN rm /var/www/html/index.html 
COPY index.html /var/www/html 
EXPOSE 80 
CMD ["apachectl", "-D", "FOREGROUND"]
