FROM alpine

WORKDIR /app

ENV URL=https://github.com/vaxilu/soga/releases/latest/download/soga-linux-amd64.tar.gz

RUN apk add --no-cache wget tar && \
    wget $URL -O soga-linux-amd64.tar.gz && \
    tar -xzvf soga-linux-amd64.tar.gz && \
    rm soga-linux-amd64.tar.gz

COPY ./soga.conf /app/soga.conf

CMD ["/app/soga", "-c", "/app/soga.conf"]
