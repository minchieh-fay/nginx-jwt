
FROM openresty/openresty:alpine-fat

RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-jwt
#COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY nginx.conf /nginx.conf
COPY bearer.lua /bearer.lua

ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "-c", "/nginx.conf"]
