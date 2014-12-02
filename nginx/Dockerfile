FROM debian:wheezy
MAINTAINER Robin Liu <spdf@live.com>

ADD build/* /tmp/

RUN \ 
apt-key add /tmp/hhvm.gpg.key && \
apt-key add /tmp/nginx_signing.key && \
echo "deb http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list && \
echo "deb-src http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list && \
echo deb http://dl.hhvm.com/debian wheezy main | tee /etc/apt/sources.list.d/hhvm.list

RUN \
apt-get update && \
apt-get install -y apt-utils procps supervisor vim.tiny && \
apt-get install -y nginx hhvm

RUN \
cp /tmp/config/supervisord.conf /etc/supervisord.conf && \
cp /tmp/script/enter.sh /etc/enter.sh

EXPOSE 80 443
VOLUME ["/data"]
CMD ["/bin/bash /etc/enter.sh"]