FROM debian:bullseye

RUN apt-get update && \
    apt install -y ruby ruby-dev libsqlite3-dev build-essential

RUN gem install larch

COPY larch.yml /root/.larch/config.yaml

CMD ["larch", "default"]
