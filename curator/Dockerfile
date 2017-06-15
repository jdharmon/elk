FROM alpine
RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*
ENTRYPOINT ["/usr/bin/curator"]
