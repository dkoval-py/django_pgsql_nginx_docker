FROM nginx:1.19.0-alpine

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

HEALTHCHECK --interval=15s --timeout=2s \
  CMD curl -f http://localhost:80/ || exit 1
