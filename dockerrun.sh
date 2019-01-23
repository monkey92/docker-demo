#!/usr/bin/env bash

docker run --name my-php-fpm -d \
	-v /home/ddc/ws/docker-demo/server.conf/php:/ddc-php-conf \
	-v /home/ddc/ws/docker-demo/app:/ddc-app \
	sodisnai/php-dev:3 \
	/usr/sbin/php-fpm  -c /ddc-php-conf/php.ini  -y /ddc-php-conf/php-fpm.conf
	
docker run --name my-nginx -d -p 80:80 \
	-v /home/ddc/ws/docker-demo/server.conf/nginx:/etc/nginx/conf.d \
       	-v /home/ddc/ws/docker-demo/app:/ddc-app \
	--link my-php-fpm:my-php-fpm \
	sodisnai/php-dev:3 \
	/usr/sbin/nginx -g 'daemon off;'

docker run --name my-nginx -d -p 80:80 \
       	-v /home/ddc/ws/docker-demo/app:/ddc-app \
	sodisnai/demo:3.0



