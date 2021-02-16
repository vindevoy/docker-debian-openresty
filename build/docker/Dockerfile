FROM vindevoy/debian10-base:latest

LABEL maintainer="Yves Vindevogel (vindevoy) - yves.vindevogel@asynchrone.com"

COPY resources/lua.sh /tmp/lua.sh
COPY resources/lua-server /tmp/lua-server

RUN set -x && \ 
    apt-get update -y && \ 
    apt-get upgrade -y && \ 
    apt-get install nginx libnginx-mod-http-lua --no-install-recommends -y && \ 
    rm -f /etc/nginx/sites-enabled/default && \ 
    mv /tmp/lua-server /etc/nginx/sites-available/ && \ 
    ln -sf /etc/nginx/sites-available/lua-server /etc/nginx/sites-enabled/lua-server && \ 
    mkdir -p /opt/lua && \ 
    mv /tmp/lua.sh /opt/lua/ && \ 
    chmod +x /opt/lua/lua.sh && \ 
    mkdir -p /var/www/lua && \ 
    touch /var/www/lua/output.html && \ 
    chmod 666 /var/www/lua/output.html && \ 
    apt-get autoremove && \ 
    apt-get clean all

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
