FROM nginx:alpine

WORKDIR /

RUN rm -rf /etc/nginx/conf.d/* 

COPY ./run.sh /
RUN chmod +x /run.sh

CMD ["sh", "/run.sh"]