FROM php:latest

USER root

RUN apt-get update && \
    apt-get install -y supervisor && \
    mkdir /var/log/process

COPY process01.php /home/
COPY process02.php /home/
COPY process01.conf /etc/supervisor/conf.d/
COPY process02.conf /etc/supervisor/conf.d/
