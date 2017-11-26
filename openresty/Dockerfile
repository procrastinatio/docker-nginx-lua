FROM openresty/openresty:alpine-fat



COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
