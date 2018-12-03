FROM nginx:alpine

WORKDIR /

RUN export CERTBOT_DEPS="py-pip \
                         build-base \
                         libffi-dev \
                         python-dev \
                         ca-certificates \
                         openssl-dev \
                         linux-headers \
                         dialog \
                         wget" && \
            apk --update add openssl \
                             augeas-libs \
                             ${CERTBOT_DEPS}

RUN pip install --upgrade --no-cache-dir pip virtualenv

RUN rm -rf /etc/nginx/conf.d/* && \
    wget https://dl.eff.org/certbot-auto && \
    chmod a+x ./certbot-auto

COPY ./run.sh /
RUN chmod +x /run.sh

CMD ["sh", "/run.sh"]