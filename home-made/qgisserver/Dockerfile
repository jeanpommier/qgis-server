FROM debian:stretch
MAINTAINER Jean Pommier <jean.pommier@pi-geosolutions.fr>

LABEL version="0.2"
LABEL description="QGISserver"

RUN  export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
                                        vim \
                                        apt-transport-https \
                                        wget \
                                        gpg

# We don't perform base image upgrade. If you want to  build on latest upgrade,
# do a docker pull debian:stretch beforehand
RUN echo 'deb https://qgis.org/debian-ltr stretch main' >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45

RUN apt-get update && apt-get install -y --allow-unauthenticated \
                                        build-essential \
                                        qgis-server \
                                        python-qgis \
                                        libapache2-mod-fcgid\
                                        apache2 \
                                        unzip

RUN apt-get install -y xvfb

#Install wfsOutputExtension plugin
RUN mkdir -p /opt/qgis-server && mkdir -p /opt/qgis-server/plugins
ADD https://github.com/3liz/qgis-wfsOutputExtension/archive/master.zip /opt/qgis-server/plugins
RUN unzip /opt/qgis-server/plugins/master.zip -d /opt/qgis-server/plugins/
RUN mv /opt/qgis-server/plugins/qgis-wfsOutputExtension-master /opt/qgis-server/plugins/wfsOutputExtension

RUN a2enmod fcgid && \
    a2enmod rewrite

#virtual host
ADD 001-qgis-server.conf /etc/apache2/sites-available/001-qgis-server.conf
#Setting up Apache
RUN export LC_ALL="C" && a2enmod fcgid && a2enconf serve-cgi-bin
RUN a2dissite 000-default
RUN a2ensite 001-qgis-server
EXPOSE 80
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
