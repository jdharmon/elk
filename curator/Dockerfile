FROM alpine
RUN apk --update add python py-setuptools py-pip \
 && pip install elasticsearch-curator \
 && apk del py-pip \
 && rm -rf /var/cache/apk/* \
 && echo "30 0 * * * /usr/bin/curator --config /etc/curator/curator.yml /etc/curator/actions.yml" > /etc/crontabs/root
COPY *.yml /etc/curator/
CMD ["crond", "-f"]
