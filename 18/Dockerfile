FROM node:18-alpine

# Support private packages NPM
ARG NPM_TOKEN

RUN chmod 666 -R /tmp

# Install Chromium
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.20/main" >> /etc/apk/repositories \
    && apk upgrade -U -a \
    && apk add --no-cache \
    chromium \
    chromium-swiftshader \
    font-noto-emoji \
    && rm -rf /var/cache/* \
    && fc-cache -f

COPY local.conf /etc/fonts/local.conf

CMD [ "node" ]
