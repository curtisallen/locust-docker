FROM python:3.6-alpine

ARG LOCUST_VERSION="0.9.0"
ENV LOCUST_VERSION $LOCUST_VERSION

RUN apk --no-cache add --virtual=.build-dep build-base \
    && apk --no-cache add libzmq bash\
    && pip install --no-cache-dir locustio==${LOCUST_VERSION} awscli\
    && apk del .build-dep \
    && mkdir /locust

COPY entrypoint.sh /

WORKDIR /locust

EXPOSE 8089 5557 5558

ENTRYPOINT ["/entrypoint.sh"]
