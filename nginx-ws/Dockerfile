FROM ghcr.io/alwatr/nginx-core:1.0.0

COPY conf/ /etc/nginx/

# Default environment for nginx template
ENV NGINX_OPEN_FILE_CACHE="max=1000 inactive=1h" \
    NGINX_OPEN_FILE_CACHE_VALID=1M \
    NGINX_OPEN_FILE_CACHE_MIN_USES=2 \
    NGINX_OUTPUT_BUFFERS="8 8k" \
    NGINX_EXPIRES_DYNAMIC=epoch \
    NGINX_EXPIRES_DEFAULT=epoch \
    NGINX_EXPIRES_STATIC=max \
    NGINX_LIMIT_REQ_RATE=200

ARG BUILD_REV
ARG BUILD_DATE
LABEL org.opencontainers.image.title="alwatr/nginx-ws" \
      org.opencontainers.image.description="High-performance, accelerated NGINX, optimized for serving static website. Enhanced and accelerated by Alwatr." \
      org.opencontainers.image.base.name="ghcr.io/alwatr/nginx-core:1.0.0" \
      org.opencontainers.image.version="1.0.0" \
      org.opencontainers.image.ref.name="1.0.0-nginx1.25.3-alpine" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.created=${BUILD_DATE} \
      org.opencontainers.image.revision=${BUILD_REV} \
      org.opencontainers.image.vendor="Alwatr" \
      org.opencontainers.image.source="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.url="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.documentation="https://github.com/Alwatr/nginx" \
      org.opencontainers.image.authors="S. Ali Mihandoost <ali.mihandoost@gmail.com> (https://ali.mihandoost.com), S. Amir Mohammad Najafi <njfamirm@gmail.com> (https://njfamirm.ir/)"
