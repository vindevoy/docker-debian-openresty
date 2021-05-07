PATH=/usr/local/openresty/nginx/sbin:$PATH
export PATH

/usr/local/openresty/nginx/sbin/nginx -g 'daemon off;' -c /root/openresty.conf