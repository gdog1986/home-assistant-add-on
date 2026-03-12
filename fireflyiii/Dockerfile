FROM alpine:latest

RUN apk add --no-cache bash curl docker-cli git

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
