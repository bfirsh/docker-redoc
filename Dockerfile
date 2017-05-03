FROM nginx:1.13-alpine
ENV REDOC_OPTIONS=
ADD run.sh /run.sh
CMD ["/run.sh"]
ADD . /usr/share/nginx/html/
