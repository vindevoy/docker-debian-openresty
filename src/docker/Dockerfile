###
#
#	Yves Vindevogel (vindevoy)
#	2021-05-07
#
#	Hello world with OpenResty, the base for further CLI over HTTP(S)
#
###
 
FROM vindevoy/debian-base:11.2

LABEL maintainer="Yves Vindevogel (vindevoy) - yves.vindevogel@asynchrone.com"

# Copy the needed files to run OpenResty to /root
COPY resources/openresty.sh /root/openresty.sh
COPY resources/openresty.conf /root/openresty.conf
COPY resources/openresty.list /etc/apt/sources.list.d/openresty.list

# Get the GPG Public key, without that, apt will not install OpenResty
RUN apt-get install -y --no-install-recommends wget gnupg ca-certificates
RUN wget -O - https://openresty.org/package/pubkey.gpg | apt-key add -

# Update the system
RUN apt-get update -y
RUN apt-get dist-upgrade -y

# Install OpenResty
RUN apt-get install -y --no-install-recommends openresty

# Cleanup
RUN apt-get autoremove
RUN apt-get clean all

# Make sure the shell script is executable
RUN chmod +x /root/openresty.sh 

# Make dirs for logging
RUN mkdir -p /var/log/openresty
RUN chmod 664 /var/log/openresty

# OpenResty will run on default http port 80
EXPOSE 80

#CMD ["/bin/bash"]
CMD ["/bin/bash", "-c", "/root/openresty.sh"]
