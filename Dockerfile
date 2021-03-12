
FROM openresty/openresty:alpine-fat

RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-jwt
#COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
#COPY bearer.lua /usr/local/openresty/lualib/bearer.lua
COPY bearer.lua /usr/local/openresty/nginx/bearer.lua

#ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "-c", "/nginx.conf"]
ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
