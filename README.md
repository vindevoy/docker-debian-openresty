# docker-debian-nginx-lua

The project is a Docker container based on Debian, with NGINX installed and LUA.  The container will execute a shell script when the root of the web server is called, that outputs the STDOUT to a FILE.  The content of this file is returned by NGINX.  

- I should find a better name for the image, I know. 
- This container is an experiment for exposing the results of ansible-inventory commands in a later stage.
