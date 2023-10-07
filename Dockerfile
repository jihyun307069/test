#Dockerfile

FROM public.ecr.aws/amazonlinux/amazonlinux:latest

RUN yum update
RUN yum install -y httpd
RUN systemctl enable httpd && systemctl start httpd

COPY ./code/ /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

