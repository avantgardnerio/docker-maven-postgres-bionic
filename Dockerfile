FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y postgresql postgresql-contrib sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ /tmp/ /var/tmp/*

RUN sudo sed -i "s/peer/trust/g" /etc/postgresql/*/main/pg_hba.conf && \
    sudo sed -i "s/md5/trust/g" /etc/postgresql/*/main/pg_hba.conf 
