#Dockerfile

FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update && \
RUN yum install -y httpd && \
RUN yum clean all

COPY ./code/ /var/www/html

EXPOSE 80

CMD ["usr/sbin/httpd","-D","FOREGROUND"]

