FROM centos  as c

RUN yum install httpd vim -y \
		&& echo "bye2" > /var/www/html/index.html


FROM httpd as u

COPY --from=c  /var/www/html/index.html /usr/local/apache2/htdocs/


