FROM nginx:alpine

RUN rm -rf /etc/nginx/conf.d/* && \
    wget https://dl.eff.org/certbot-auto && \
    chmod a+x ./certbot-auto && \
    apk add --no-cache --upgrade certbot certbot

CMD ./certbot-auto --nginx