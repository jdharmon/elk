FROM alpine
ENV TZ="America/New_York"
RUN apk update && apk add tzdata
COPY app.sh /root
CMD /root/app.sh
