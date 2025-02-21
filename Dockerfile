FROM alpine

WORKDIR /app

ENV URL=https://github.com/vaxilu/soga/releases/latest/download/soga-linux-amd64.tar.gz

# 安装必要的工具和时区数据
RUN apk add --no-cache wget tar tzdata && \
    wget $URL && \
    tar -xzvf soga-linux-amd64.tar.gz && \
    rm soga-linux-amd64.tar.gz && \
    chmod +x /app/soga/soga && \
    # 设置时区为Asia/Shanghai
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

# 复制配置文件到容器中
COPY ./soga.conf /app/soga/soga.conf

CMD ["/app/soga/soga", "-c", "/app/soga/soga.conf"]
