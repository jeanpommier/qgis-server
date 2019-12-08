FROM php:7-apache-stretch
MAINTAINER Jean Pommier (jean.pommier@pi-geosolutions.fr)

RUN apt-get -y update \
    && apt-get install -y  python-simplejson xauth htop vim curl ntp ntpdate ssl-cert\
    libapache2-mod-fcgid \
    unzip wget \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev
RUN docker-php-ext-configure gd  --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
#RUN php -m
#RUN php -i
#RUN apt-get clean \
#    && rm -r /var/lib/apt/lists/*

RUN a2dismod php7; a2enmod actions; a2enmod fcgid ; a2enmod ssl; a2enmod rewrite; a2enmod headers; \
    a2enmod deflate; a2enmod php7

ENV LIZMAPVERSION 3.2.2

COPY files/ /home/files/

ADD https://github.com/3liz/lizmap-web-client/archive/$LIZMAPVERSION.zip /var/www/
#ADD $LIZMAPVERSION.zip /var/www/
RUN /home/files/setup.sh

VOLUME  ["/var/www/websig/lizmap/var" , "/home"]
EXPOSE 80 443
CMD /start.sh
