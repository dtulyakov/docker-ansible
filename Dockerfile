FROM python:2-alpine3.6

WORKDIR /root
ADD requirements.txt /root/requirements.txt
RUN set -x \
  && apk update \
  && apk add --no-cache --virtual .build-deps \
     isl \
     gmp \
     gcc \
     mpc1 \
     make \
     mpfr3 \
     libffi \
     libgcc \
     pkgconf \
     libgomp \
     musl-dev \
     libc-dev \
     libatomic \
     libstdc++ \
     binutils \
     libffi-dev \
     libressl-dev \
     binutils-libs \
     libressl2.5-libtls \
  && pip install -r /root/requirements.txt \
  && apk del .build-deps \
     isl \
     gmp \
     gcc \
     mpc1 \
     make \
     mpfr3 \
     libffi \
     libgcc \
     pkgconf \
     libgomp \
     musl-dev \
     libc-dev \
     libatomic \
     libstdc++ \
     binutils \
     libffi-dev \
     libressl-dev \
     binutils-libs \
     libressl2.5-libtls \
  && du -shc /var/cache/* \
  && rm -rf /var/cache/apk /root/.cache

WORKDIR /opt

