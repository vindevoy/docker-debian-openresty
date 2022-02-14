# docker-debian-openresty

The project is a Docker container based on Debian, with OpenResty installed.  The container will return "hello world".  The sole purpose of this image is to have a base image with OpenResty installed that I will use in other projects.

## Versioning

Considering the version is given as follows: a.b.c.d-y-z, this corresponds to:

- a.b.c.d: the version of the openresty software
- y: the build version of the openresty software, as found in the download of the software
- z: the build version of this image
