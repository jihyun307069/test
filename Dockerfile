#Dockerfile

FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update
RUN yum install -y httpd php

WORKDIR /var/www/html

ADD /code /var/www/html

EXPOSE 80

CMD ["apachectl","-DFOREGROUND"]
