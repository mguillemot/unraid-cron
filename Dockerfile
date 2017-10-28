FROM ubuntu
MAINTAINER g@npng.org

ADD crontab /etc/cron.d/hello-cron

RUN chmod 0644 /etc/cron.d/hello-cron
RUN touch /var/log/cron.log
RUN apt-get update
RUN apt-get -y install cron

CMD /usr/sbin/cron && tail -f /var/log/cron.log

