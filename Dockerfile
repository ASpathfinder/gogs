FROM debian:buster
LABEL authors="kellyalsa"

COPY exclude/gogs /usr/local/gogs
COPY gogs_entrypoint.sh /gogs_entrypoint.sh

ENV PATH=$PATH:/usr/local/gogs
ENV TZ=Asia/Shanghai

RUN apt update && apt install -y git

WORKDIR /app
ENTRYPOINT ["sh", "/gogs_entrypoint.sh"]
EXPOSE 3000