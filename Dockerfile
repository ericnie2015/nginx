FROM docker.io/nginx:1.14
LABEL io.openshift.expose-services="8080:http"
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN chmod -R 777 /var/log/nginx /var/cache/nginx /var/run \
    && chgrp -R 0 /etc/nginx \
    && chmod -R g=u /etc/nginx
EXPOSE 8080
