FROM debian:bullseye
RUN apt -y update &&\
    apt -y install dnsutils iproute2 curl tmux postgresql-client httpie &&\
    apt -y clean &&\
    useradd -m -s /bin/bash dek

USER dek
WORKDIR /home/dek
CMD /bin/bash
