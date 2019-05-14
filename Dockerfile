FROM maxexcloo/nginx-php:latest
MAINTAINER Max Schaefer <max@excloo.com>

RUN mkdir -p /data/http && \
	cd /data/http && \
	curl -L "https://github.com/phppgadmin/phppgadmin/releases/download/REL_5-6-0/phpPgAdmin-5.6.0.tar.bz2" | tar --strip-components=1 -x -z && \
	rm -rf conf/config.inc.php-dist CREDITS DEVELOPERS FAQ HISTORY INSTALL TODO TRANSLATORS
ADD data /data
