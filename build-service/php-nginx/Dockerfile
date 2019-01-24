# php-nginx 镜像构建

FROM sodisnai/php-dev:3

MAINTAINER ddc 2223445830@qq.com


# 创建一个用户 用来执行 php-fpm  与 nginx
RUN ["groupadd", "-g", "1000", "ddc-docker-group"]
RUN ["useradd", "-u", "1000", "ddc-docker"]

# php-fpm 配置文件
COPY ./php.ini /usr/local/php56/etc/php.ini
COPY ./php-fpm.conf /usr/local/php56/etc/php-fpm.conf

# nginx 配置文件
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d/*.conf /etc/nginx/conf.d/

# 服务启动脚本
COPY ./entrypoint.sh /server-sh/entrypoint.sh
RUN ["chmod", "+x" , "/server-sh/entrypoint.sh"]


ENTRYPOINT ["/bin/bash" , "/server-sh/entrypoint.sh"]


