FROM debian:bullseye

LABEL version="1.0"
LABEL description="Links 2 text browser"
LABEL maintainer="tmp6154@yandex.ru"

ENV USER "links2"

# Install build tools

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install links2 -y

# Make a new user

RUN groupadd -g 1000 $USER && useradd -u 1000 -g $USER $USER && \
    mkdir -p /home/$USER && chown $USER:$USER /home/$USER && \
    chmod 755 /home/$USER
USER $USER
WORKDIR /home/$USER

ENTRYPOINT ["/usr/bin/links2"]
