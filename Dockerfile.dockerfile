#Dockerfile

FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN apt-get update
RUN apt-get install apache2 -y && apt-get install -y php
COPY ./code/ /var/www/html
EXPOSE 80
CMD apachectl -DFOREGROUND