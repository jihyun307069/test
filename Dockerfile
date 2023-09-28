#Dockerfile

FROM ubuntu:latest

RUN apt update
RUN apt install -y apache2

COPY /code/index.html /var/www/html

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]

