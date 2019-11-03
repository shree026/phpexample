FROM fedora
RUN dnf install httpd -y
COPY phpexample /var/www/html
COPY  httpd.conf /etc/httpd/conf/httpd.conf
EXPOSE 81
ENTRYPOINT httpd -DFOREGROUND

