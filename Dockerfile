FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/* &&
    wget https://dl.eff.org/certbot-auto && 
    chmod a+x ./certbot-auto