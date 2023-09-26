#Dockerfile

FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum update
RUN yum install httpd -y && yum install -y php
COPY ./code/ /var/www/html
EXPOSE 80
CMD apachectl -DFOREGROUND
