#Dockerfile

FROM public.ecr.aws/ubuntu/ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2 && \
apt-get install -y php


COPY ./code/ /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
