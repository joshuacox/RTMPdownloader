FROM    debian:jessie
MAINTAINER Josh Cox <josh 'at' webhosting coop>

ENV RTMPdownloader_updated 20150412
ENV RTMP_URL rtmp://207.7.154.118/OnDemand/mp4:tlchouse/tlchouse_e8bf93a9-e186-45fd-82e7-e8fd6dbf124b.mp4
ENV MPG_OUTPUT /tmp/out.mpg

RUN apt-get update
RUN apt-get -y upgrade

VOLUME ["/tmp"]
# MOUNT_FROM_HOST /exports/RTMPdownloader /tmp
# NO_HTTP_PROXY

# Basic Requirements
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes install vlc

RUN apt-get clean

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

# private expose
EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
