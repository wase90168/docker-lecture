FROM webdevops/php-apache

EXPOSE 80

RUN apt-get update; \
apt-get upgrade -y; \
mkdir /dockerfiles

ENV DOCKERFILES="/dockerfiles"

ADD ./src/ $DOCKERFILES

RUN chmod +x $DOCKERFILES/*.sh; \
$DOCKERFILES/initialize-container.sh
