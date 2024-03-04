FROM fedora:latest
RUN sudo dnf -y upgrade \
	&& dnf -yqq install tuxpaint vim httpd
ADD myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
