# syntax=docker/dockerfile:1.9
ARG BUILD_OS=alpine:3.19
ARG OPENSSL_VERSION=3.0.9

FROM ${BUILD_OS} as alpine
ARG OPENSSL_VERSION

RUN apk add --no-cache --virtual .build-deps \
    make gcc libgcc musl-dev linux-headers perl vim \
    &&  wget https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz \
    && tar -xf openssl-${OPENSSL_VERSION}.tar.gz\
    && cd openssl-${OPENSSL_VERSION} \
    && ./Configure enable-fips --libdir=lib --prefix=/usr \
    && make \
    && make install_fips \
    && apk del .build-deps \
    && cd .. && rm -rf openssl-${OPENSSL_VERSION}.tar.gz openssl-${OPENSSL_VERSION} \
    && apk upgrade --no-cache -U

COPY openssl.cnf /etc/ssl/openssl.cnf
