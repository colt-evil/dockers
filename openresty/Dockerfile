FROM openresty/openresty:jessie

MAINTAINER Colt Xie <colt.xie@gmail.com>

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
	&& sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && sed -i 's|security.debian.org|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list

RUN mkdir -p /var/www/html && usermod -u 1000 www-data
