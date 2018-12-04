FROM nginx:alpine

WORKDIR /

RUN rm -rf /etc/nginx/conf.d/* 
    # && \
    # wget https://dl.eff.org/certbot-auto && \
    # chmod a+x ./certbot-auto && \ 
    # apk update && \
    # apk add python2 augeas gcc python2-dev musl-dev libffi-dev openssl-dev py2-pip && \
    # pip install --upgrade --no-cache-dir pip virtualenv

COPY ./run.sh /
RUN chmod +x /run.sh

CMD ["sh", "/run.sh"]