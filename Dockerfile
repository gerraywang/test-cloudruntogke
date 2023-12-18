FROM nginx:1.23.2-alpine

COPY nginx/proxy.conf.template /etc/nginx/conf.d/default.conf.template

EXPOSE 80
CMD /bin/sh -c "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
