FROM nginx:stable-perl

RUN \
    DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
	fcgiwrap \
        libcgi-pm-perl \
        liblocal-lib-perl \
        cpanminus \
        libexpat1-dev \
        libutf8-all-perl \
        libjson-perl \
        zip \
	wget \
        libdbd-mysql-perl

RUN service fcgiwrap start

EXPOSE 80

EXPOSE 443

