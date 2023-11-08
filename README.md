# Alwatr Accelerated Web Server

High-performance, accelerated NGINX, optimized for serving static content. Enhanced and accelerated by Alwatr.

## Usage

The right way of using the alwatr nginx is behind kubernetes ingress or simple edge reverse-proxy, then don't config edge stuff like gzip compression, ssl, etc or even config domain or multiple websites.

```Dockerfile
FROM ghcr.io/alwatr/nginx:1
```
