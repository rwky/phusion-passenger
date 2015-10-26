FROM phusion/passenger-customizable:0.9.17
MAINTAINER Rowan Wookey <admin@rwky.net>
ENV HOME /root
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5862E31D && \
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0F6DD8135234BF2B && \
echo "deb http://ppa.launchpad.net/adiscon/v8-stable/ubuntu trusty main\ndeb-src http://ppa.launchpad.net/adiscon/v8-stable/ubuntu trusty main" > /etc/apt/sources.list.d/rsyslog.list && \
apt-get -y purge syslog-ng && \
apt-get update && \
apt-get -y install rsyslog && \
apt-get -y -o Dpkg::Options::="--force-confold" install nginx-common nginx-extras passenger passenger-dev passenger-doc && \
apt-get -y autoremove && \
rm -rf /etc/rsyslog.d/* && \
rm -rf /etc/logrotate.d/* && \
rm -f /etc/nginx/sites-enabled/* && \
rm -rf /etc/service/syslog-ng && \
rm -rf /etc/service/nginx-log-forwarder && \
rm -rf /etc/service/syslog-forwarder && \
rm -rf /var/log/* && \
chown root:syslog /var/log && \
mkdir -p /etc/service/exim && \
mkdir -p /etc/service/rsyslog && \
touch /etc/service/rsyslog/down && \
touch /etc/service/exim/down && \
touch /etc/service/nginx/down && \
/etc/my_init.d/00_regen_ssh_host_keys.sh -f
COPY image/rsyslog.conf /etc/rsyslog.conf
COPY image/00-default.conf /etc/rsyslog.d/
COPY image/rsyslog.logrotate /etc/logrotate.d/rsyslog
COPY image/nginx/* /etc/nginx/conf.d/
COPY image/nginx.conf /etc/nginx/nginx.conf
COPY image/exim.run /etc/service/exim/run
COPY image/rsyslog.run /etc/service/rsyslog/run
COPY image/nginx.run /etc/service/nginx/run
COPY image/pylogger /usr/local/bin/
COPY image/security.list /etc/apt/security.list
COPY image/cron.run /etc/service/cron/run
RUN apt-get update -o Dir::Etc::SourceList=/etc/apt/security.list -o Dir::Etc::SourceParts=/tmp  && \
apt-get upgrade -yq -o Dir::Etc::SourceList=/etc/apt/security.list -o Dir::Etc::SourceParts=/tmp && \
apt-get update && apt-get clean && rm -rf /var/lib/apt/lists/* && \
/usr/sbin/logrotate -v /etc/logrotate.conf
