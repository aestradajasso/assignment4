FROM fedora:latest
RUN sudo dnf -y upgrade \
	&& dnf -yqq install tuxpaint \
	&& dnf -yqq install vim \
	&& dnf -yqq install httpd
ADD myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
