FROM vindevoy/debian-base:latest

LABEL maintainer="Yves Vindevogel (vindevoy) - yves.vindevogel@asynchrone.com"

COPY resources/openresty.sh /root/openresty.sh
COPY resources/openresty.conf /root/openresty.conf
COPY resources/openresty.list /etc/apt/sources.list.d/openresty.list

RUN set -x && \ 
    apt-get install -y --no-install-recommends wget gnupg ca-certificates && \ 
    wget -O - https://openresty.org/package/pubkey.gpg | apt-key add - && \ 
    apt-get update -y && \ 
    apt-get upgrade -y && \ 
    apt-get install -y --no-install-recommends openresty && \ 
    apt-get autoremove && \ 
    apt-get clean all && \ 
    chmod +x /root/openresty.sh && \ 
    mkdir -p /var/log/openresty && \ 
    chmod 664 /var/log/openresty

EXPOSE 80

CMD ["/bin/bash", "-c", "/root/openresty.sh"]
