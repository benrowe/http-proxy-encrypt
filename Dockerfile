FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/*

# RUN wget https://dl.eff.org/certbot-auto