FROM nginx:alpine

RUN rm -rf /etc/nginx/conf.d/* && \
    wget https://dl.eff.org/certbot-auto && \
    chmod a+x ./certbot-auto && \
    ./certbot-auto --debug --os-packages-only

CMD ./certbot-auto --nginx