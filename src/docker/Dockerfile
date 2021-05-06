###
#
#	Yves Vindevogel (vindevoy)
#	2021-02-16
#
#	Debian based image running NGINX that executes a bash script and returns the output of it on port 80
#
###
 
FROM vindevoy/debian-base:latest

LABEL maintainer="Yves Vindevogel (vindevoy) - yves.vindevogel@asynchrone.com"

COPY resources/lua.sh /tmp/lua.sh
COPY resources/lua-server /tmp/lua-server 

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install nginx libnginx-mod-http-lua --no-install-recommends -y

RUN rm -f /etc/nginx/sites-enabled/default 
RUN mv /tmp/lua-server /etc/nginx/sites-available/
RUN ln -sf /etc/nginx/sites-available/lua-server /etc/nginx/sites-enabled/lua-server 

RUN mkdir -p /opt/lua
RUN mv /tmp/lua.sh /opt/lua/
RUN chmod +x /opt/lua/lua.sh 

RUN mkdir -p /var/www/lua 
RUN touch /var/www/lua/output.html 
RUN chmod 666 /var/www/lua/output.html

RUN apt-get autoremove
RUN apt-get clean all


CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
