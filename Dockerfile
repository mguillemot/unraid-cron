FROM ubuntu
MAINTAINER g@npng.org

VOLUME /config /logs /data

ADD crontab /etc/cron.d/my-cron

RUN chmod 0644 /etc/cron.d/my-cron
RUN touch /logs/minutely.log /logs/hourly.log /logs/daily.log
RUN apt-get update
RUN apt-get -y install cron

CMD /usr/sbin/cron && tail -f /logs/*.log

