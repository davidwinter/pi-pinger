FROM alpine

RUN which crond && \
    rm -rf /etc/periodic && \
    rm -rf /var/spool/cron/crontabs/root && \
    echo '* * * * * /crontab.sh' > /var/spool/cron/crontabs/root

RUN apk --no-cache add curl

COPY crontab.sh /crontab.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["crond", "-f", "-l", "2"]
