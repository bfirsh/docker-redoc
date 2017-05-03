FROM nginx:1.13-alpine
ENV REDOC_OPTIONS=
COPY run.sh /run.sh
CMD ["/run.sh"]
COPY . /usr/share/nginx/html/
