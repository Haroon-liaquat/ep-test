FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends mysql-client \
    && rm -rf /var/lib/apt/lists/*
COPY ./website /usr/share/nginx/html/
ENTRYPOINT ["mysql"]

