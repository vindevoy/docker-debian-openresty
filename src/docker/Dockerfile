###
#
#	Yves Vindevogel (vindevoy)
#	2021-02-16
#
#	CentOS 10 based image running NGINX that executes a bash script and returns the output of it 
#
###
 
FROM vindevoy/debian10-base:latest

LABEL maintainer="Yves Vindevogel (vindevoy) - yves.vindevogel@asynchrone.com"

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get autoremove
RUN apt-get clean all


CMD ["/bin/bash"]
