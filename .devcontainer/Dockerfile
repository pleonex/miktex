#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# Update the VARIANT arg in devcontainer.json to pick an Alpine version: 3.10, 3.11, 3.12
# To fully customize the contents of this image, use the following Dockerfile instead:
# https://github.com/microsoft/vscode-dev-containers/tree/v0.128.0/containers/alpine/.devcontainer/base.Dockerfile
ARG VARIANT="3.12"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

RUN apk --no-cache add \
        g++ \
        make \
        cmake \
        libxslt \
        curl curl-dev curl-static \
        bison \
        flex \
        apr-dev \
        apr-util-dev \
        bzip2-dev bzip2-static \
        expat-static \
        fontconfig-dev fontconfig-static \
        freetype-static \
        fribidi-dev fribidi-static \
        gd-dev \
        gmp-dev \
        graphite2-dev graphite2-static \
        harfbuzz-dev harfbuzz-static \
        icu-static \
        libjpeg-turbo-dev libjpeg-turbo-static \
        xz-dev \
        mpfr-dev \
        # libmspack-dev \
        # uriparser-dev \
        # zziplib-dev \
        openssl-libs-static \
        pixman-dev pixman-static \
        libpng-static \
        zlib-static \
    && mkdir /deps/

ENV LC_ALL=C

# Alpine doesn't have hunspell, cairo, popt and zzip static libs
# ... and the one included in MiKTeX only compile in Windows
RUN cd /deps/ \
    && git clone https://github.com/hunspell/hunspell -b v1.7.0 \
    && cd hunspell \
    && apk add g++ make autoconf automake gettext libtool \
    && autoreconf -vfi \
    && ./configure \
    && make \
    && make install \
    && ldconfig

RUN cd /deps/ \
    && curl -o cairo.tar.xz https://cairographics.org/snapshots/cairo-1.17.2.tar.xz \
    && tar xJvf cairo.tar.xz \
    && cd cairo-1.17.2 \
    && ./configure \
    && make \
    && make install

RUN cd /deps \
    && curl -o popt.tar.gz http://ftp.rpm.org/popt/releases/popt-1.x/popt-1.18.tar.gz \
    && tar xzvf popt.tar.gz \
    && cd popt-1.18 \
    && ./configure \
    && make \
    && make install

RUN cd /deps \
    && git clone https://github.com/gdraheim/zziplib -b v0.13.71 \
    && cd zzip \
    && mkdir build \
    && apk add zip \
    && cmake -DBUILD_STAIC_LIBS=ON -DBUILD_SHARED_LIBS=OFF .. \
    && make \
    && make install
