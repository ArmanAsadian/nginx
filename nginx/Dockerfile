FROM docker.io/library/nginx:1.25.3-alpine3.18-slim

RUN rm -rfv /docker-entrypoint* /etc/nginx/conf.d/* /etc/nginx/nginx.conf /var/www/html /usr/share/nginx/html
COPY etc/nginx/ /etc/nginx/
RUN chmod a+rx /etc/nginx/entrypoint.sh /etc/nginx/entrypoint.d/*.sh
RUN ls -RlAhF /etc/nginx/

EXPOSE 80
STOPSIGNAL SIGQUIT
WORKDIR /var/www/html/
ENTRYPOINT ["/etc/nginx/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

ARG BUILD_REV
ARG BUILD_DATE
LABEL org.opencontainers.image.title="alwatr/nginx" \
      org.opencontainers.image.description="NGINX web server slim (light), packaged by Alwatr." \
      org.opencontainers.image.base.name="docker.io/library/nginx:1.25.3-alpine3.18-slim" \
      org.opencontainers.image.version="1.1.1-n1.25.3" \
      org.opencontainers.image.ref.name="1.1.1-n1.25.3-a3.18-slim" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.created=${BUILD_DATE} \
      org.opencontainers.image.revision=${BUILD_REV} \
      org.opencontainers.image.vendor="Alwatr" \
      org.opencontainers.image.source="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.url="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.documentation="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.authors="S. Ali Mihandoost <ali.mihandoost@gmail.com> (https://ali.mihandoost.com), S. Amir Mohammad Najafi <njfamirm@gmail.com> (https://njfamirm.ir/)"
