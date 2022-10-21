FROM alpine:latest

RUN mkdir /app
COPY dnstest.sh /app/dnstest.sh

RUN apk --no-cache add bash bc drill

ENTRYPOINT ["/app/dnstest.sh"]
